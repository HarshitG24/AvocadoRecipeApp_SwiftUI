//
//  RipeningModel.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/5/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct Ripening: Identifiable, Hashable {
    var id = UUID()
    var image, stage, title, description, ripeness, instruction: String
}
