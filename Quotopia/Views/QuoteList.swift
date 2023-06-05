//
//  ContentView.swift
//  Quotopia
//
//  Created by Amir on 05/06/2023.
//

import SwiftUI

struct QuoteList: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteList()
    }
}
