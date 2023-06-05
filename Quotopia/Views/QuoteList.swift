//
//  ContentView.swift
//  Quotopia
//
//  Created by Amir on 05/06/2023.
//

import SwiftUI

struct QuoteList: View {
    @ObservedObject var model = AuthorModel()
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    ForEach(model.authors) { author in
                        
                        // MARK: Author Card
                        NavigationLink {
                            AuthorDetails(author: author)
                        } label: {
                            ZStack {
                                Image(author.backgroundImg)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: UIScreen.main.bounds.width - 30, height: 350)
                                    .cornerRadius(15)
                                
                                
                                VStack(alignment: .leading) {
                                    Text(author.popularQuotes[0])
                                        .fontWeight(.bold)
                                        .font(.title)
                                        .multilineTextAlignment(.leading)
                                    
                                    
                                    Text("― " + author.name)
                                        .padding([.top], 10)
                                }.foregroundColor(.white)
                                    .padding(.all, 20.0)
                                    .shadow(color: .black, radius: 20)
                                
                            }.frame(width: UIScreen.main.bounds.width - 30, height: 350)
                        }
                        
                    }
                    
                }.navigationTitle("Quotes")
                    .padding(.top, 40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteList()
    }
}
