//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by Melissa Chai on 6/28/23.
//

import SwiftUI

struct AffirmationsView: View {
    var body: some View {
        NavigationView {
            Text("Affirmations")
                .navigationTitle("Affirmations")
                .font(Font.custom("Baskerville", size: 20))
                .background(Color("LightestBlue"))
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        AffirmationsView()
    }
}
