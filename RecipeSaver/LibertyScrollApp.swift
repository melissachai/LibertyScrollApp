//  USING THIS RECIPE SAVER APP AS A TEMPLATE
//  TO GUIDE THE LIBERTYSCROLL APP!!!!
//
//
//  LibertyScrollApp.
//
//  Created by Melissa Chai on 6/28/23.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipeViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(recipeViewModel)
        }
    }
}
