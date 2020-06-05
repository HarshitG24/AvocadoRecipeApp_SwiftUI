//
//  RecipeModel.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/5/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct Recipe: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var headline: String
    var image : String
    var rating: Int
    var serves: Int
    var preperation: Int
    var cooking: Int
    var instruction: [String]
    var ingredients: [String]
}
