//
//  ContentView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/4/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                // MARK: - Header
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headerData, id: \.self){header in
                             HeaderView(header: header)
                        }
                    }
                }
                
                // MARK: - Dishesview
                Text("Avacado Dishes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
                DishesView()
                
                // MARK: - AVACADO FACTS
                Text("Avacado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60){
                        ForEach(factsData, id: \.self){item in
                            FactsView(fact: item)
                        }
                    }.padding(.vertical)
                        .padding(.leading, 60)
                        .padding(.trailing, 20)
                }
                
                //MARK: - RECEIPE CARDS
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack{
                    ForEach(recipesData, id: \.self){item in
                        RecipeCardView(recipe: item)
                            .padding(.horizontal, 12)
                    }
                }.frame(maxWidth: 640) // because of wide iPad Screen
                
                // MARK: - Footer
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocado but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }.edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
         content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
