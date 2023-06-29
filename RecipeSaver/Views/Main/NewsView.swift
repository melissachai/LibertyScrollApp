//
//  NewsView.swift
//  LibertyScroll
//
//  Created by Melissa Chai on 6/28/23.
//

import SwiftUI

struct NewsView: View {
    var recipe: Recipe

    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height:100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 200)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(Font.custom("Baskerville", size: 35))
                    .bold()
                    .multilineTextAlignment(.center)
                    

                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                            .font(Font.custom("Baskerville", size: 20))
                    }

                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("")
                                .font(.headline)
                            Text(recipe.ingredients)
                                .font(Font.custom("Baskerville", size: 20))
                        }
                    }

                    if !recipe.directions.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("")
                                .font(.headline)
                            Text(recipe.directions)
                                .font(Font.custom("Baskerville", size: 20))
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(recipe: Recipe.all[0])
    }
}
