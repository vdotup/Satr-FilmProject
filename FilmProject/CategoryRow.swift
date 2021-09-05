//
//  CategoryRow.swift
//  FilmProject
//
//  Created by Abdurrahman Alfudeghi on 05/09/2021.
//

import SwiftUI

struct CategoryRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(title)
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(title: "Comedy", isSelected: true, action: {})
    }
}
