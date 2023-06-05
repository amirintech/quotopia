//
//  AuthorView.swift
//  Quotopia
//
//  Created by Amir on 05/06/2023.
//

import Foundation

class AuthorModel: ObservableObject {
    @Published var authors = [Author]()
    
    init() {
        authors = getAuthors()
    }
    
    private func getAuthors() -> [Author] {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                return try JSONDecoder().decode([Author].self, from: data)
            }
            catch {
                print(error)
            }
        }
        
        return [Author]()
    }
}
