//
//  DetailView.swift
//  Newspaper App
//
//  Created by Ahmad Ardal on 2023-10-17.
//

import Foundation
import SwiftUI

struct DetailView: View {
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                
                Text("Title").font(.title).bold()
                
                AsyncImage(url: URL(string: "https://www.svtstatic.se/image/wide/992/41404046/1697528910"), content: {image in
                    
                    image.resizable()
                    
                }, placeholder: {
                    Text("Loading...")
                }).frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.3, alignment: .center).cornerRadius(3)
                
                Text("News article text").padding()
                
            }.position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.3)
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
