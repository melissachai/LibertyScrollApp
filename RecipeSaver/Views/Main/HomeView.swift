//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Melissa Chai on 6/28/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipeVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
