//
//  RecipeCookingView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/5/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct RecipeCookingView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12){
            RecipeInfo(val: "Serves: ", category: "\(recipe.serves)", img: "person.2")
            RecipeInfo(val: "Prep: ", category: "\(recipe.preperation)", img: "clock")
            RecipeInfo(val: "Cooking: ", category: "\(recipe.cooking)", img: "flame")
        }.font(.footnote)
            .foregroundColor(Color.gray)
    }
}


struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
    }
}
