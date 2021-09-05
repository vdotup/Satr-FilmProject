//
//  NewFilmView.swift
//  FilmProject
//
//  Created by Abdurrahman Alfudeghi on 05/09/2021.
//

import SwiftUI

struct NewFilmView: View {
    
    @State private var title: String = ""
    @State private var rating: Double = 0.0
    @State private var categories: [Category] = []
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                Section(header: Text("Rating: \(String(format: "%.1f", rating))")) {
                    Slider(value: $rating, in: 0.0...10.0, step: 0.1)
                }
                
                Section(header: Text("Categories")) {
                    ForEach(Category.allCases, id: \.self) { category in
                        CategoryRow(title: category.rawValue, isSelected: categories.contains(category)) {
                            if categories.contains(category) {
                                categories.removeAll(where: { $0 == category })
                            }
                            else {
                                categories.append(category)
                            }
                        }
                    }
                }
            }
            .navigationTitle("New Film")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Save", action: {})
            }
        }
    }
}

struct NewFilmView_Previews: PreviewProvider {
    static var previews: some View {
        NewFilmView()
    }
}
