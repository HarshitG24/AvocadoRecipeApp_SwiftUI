//
//  RipeningStagesView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/4/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct RipeningStagesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25){
                    ForEach(ripeningData, id: \.self){item in
                        RipeningView(ripening: item)
                    }
                }
                
                Spacer()
            }.padding(.vertical)
            .padding(.horizontal, 25)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
