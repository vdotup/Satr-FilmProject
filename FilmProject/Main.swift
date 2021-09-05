//
//  ContentView.swift
//  FilmProject
//
//  Created by Abdurrahman Alfudeghi on 05/09/2021.
//

import SwiftUI

struct Main: View {
    
    @State private var showingNewFilm: Bool = false
    
    var films: [Film] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(films, id: \.id) { film in
                    Text(film.title)
                }
            }
            .navigationTitle("Film Project")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $showingNewFilm) {
            NewFilmView()
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
