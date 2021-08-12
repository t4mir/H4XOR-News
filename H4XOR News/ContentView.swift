//
//  ContentView.swift
//  H4XOR News
//
//  Created by Тамирлан Абаев   on 11.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            
            List(networkManager.posts, rowContent: { (post) in
                Text(String(post.points))
                Text(post.title)
            })
            .navigationBarTitle("H4XOR News")
            
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




