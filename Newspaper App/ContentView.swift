//
//  ContentView.swift
//  Newspaper App
//
//  Created by Ahmad Ardal on 2023-10-17.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                VStack(alignment: .center) {
                    Text("today-news").bold().font(.title)
                    
                    CardComponentView().frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.25, alignment: .center).background(.black).cornerRadius(9)

                }
                .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.2)
            }
        }
    }
}

struct CardComponentView: View {
    
    
    
    var body: some View {
        
        
        NavigationLink(destination: DetailView(), label: {
            AsyncImage(url: URL(string: "https://www.svtstatic.se/image/wide/992/41404046/1697528910"), content: { image in
                
                image.resizable().overlay(content: {
                    
                    

                    VStack {
                        Text("Attentat i Bryssel").bold().font(.title).foregroundColor(.white)
                    }
                    
                })
                
            }, placeholder: {
                Text("Loading...").foregroundColor(.white).bold()
            })
        })
        

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
