//
//  AuthorQuotes.swift
//  Quotopia
//
//  Created by Amir on 05/06/2023.
//

import SwiftUI

struct AuthorDetails: View {
    let author: Author
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(author.name)
                    .fontWeight(.bold)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                
                Text("From " + String(author.birthYear) + " to " + String(author.deathYear))
                    .padding(.bottom, 20)
                    
                Image(author.img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 20, height: 350, alignment: .top)
                    .clipped()
                    .cornerRadius(15)
                
                Text("Background")
                    .font(.headline)
                
                Text(author.background)
                
                Text("Quotes")
                    .font(.headline)
                    .padding(.top, 20)
                
                ForEach(0 ..< author.popularQuotes.count - 1) { i in
                    Text(String(i + 1) + ") " + author.popularQuotes[i])
                        .padding(.bottom, 3)
                }
                    
                    
            }.padding()
        }
    }
}

struct AuthorQuotes_Previews: PreviewProvider {
    static var previews: some View {
        AuthorDetails(author: AuthorModel().authors[0])
    }
}
