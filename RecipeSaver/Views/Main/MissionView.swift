//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by Melissa Chai on 6/28/23.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        
        NavigationView {
            Text("insert stuff about why the app was created")
                .navigationTitle("Mission")
                .font(Font.custom("Baskerville", size: 20))
                .background(Color("LightestBlue"))
            
        }
        .navigationViewStyle(.stack)
    }
}


struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
