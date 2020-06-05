//
//  RecipeCardView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/5/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: - PROPERTIES
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
            .resizable()
            .scaledToFit()
            .overlay(
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "bookmark")
                        .font(Font.title.weight(.light))
                        .foregroundColor(Color.white)
                        .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                    }
                    
                    Spacer()
                }
            )
            
            VStack(alignment: .leading, spacing: 12){
                //TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                //RATES
                RecipeRatingView(recipe: recipe)
                
                //COOKING
                RecipeCookingView(recipe: recipe)
                
            }.padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
    .cornerRadius(12)
    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel.toggle()
        }
        .sheet(isPresented: self.$showModel) {
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}

struct RecipeInfo: View {
    var val: String
    var category: String
    var img: String
    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            Image(systemName: img)
            Text("\(category): \(val)")
        }
    }
}


