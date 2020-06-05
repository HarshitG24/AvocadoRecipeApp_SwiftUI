//
//  FactModel.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/4/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct Fact: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var content: String
}
