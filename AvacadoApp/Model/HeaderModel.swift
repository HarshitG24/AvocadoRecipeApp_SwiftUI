//
//  HeaderModel.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/4/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import Foundation

struct Header: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
