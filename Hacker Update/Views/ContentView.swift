//
//  ContentView.swift
//  Hacker Update
//
//  Created by Fahad Tariq on 20/07/2020.
//  Copyright © 2020 Fahad Tariq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("H4X0R NEWS!" )
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}



//let posts = [
//    Post(id: "1", title: "Asalam o Alikum"),
//    Post(id: "2", title: "Hello"),
//    Post(id: "3", title: "Halo")
//
//]
