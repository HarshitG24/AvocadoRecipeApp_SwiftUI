//
//  DishesView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/4/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            
            VStack(alignment: .leading, spacing: 4) {
                LeftRows(imgName: "icon-toasts", imgTxt: "Toasts")
                Divider()
                LeftRows(imgName: "icon-tacos", imgTxt: "Tacos")
                Divider()
                LeftRows(imgName: "icon-salads", imgTxt: "Salads")
                Divider()
                LeftRows(imgName: "icon-halfavo", imgTxt: "Halfavo")
            }
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            VStack(alignment: .trailing, spacing: 4) {
                RightRows(imgName: "icon-guacamole", imgTxt: "Guacamole")
                Divider()
                RightRows(imgName: "icon-sandwiches", imgTxt: "Sandwich")
                Divider()
                RightRows(imgName: "icon-soup", imgTxt: "Soup")
                Divider()
                RightRows(imgName: "icon-smoothies", imgTxt: "Smoothie")
            }
        }.font(.system(.callout, design: .serif))
            .foregroundColor(Color.gray)
            .padding(.horizontal)
            .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}

struct LeftRows: View {
    var imgName: String
    var imgTxt: String
    var body: some View {
        HStack{
            Image(imgName)
                .resizable()
                .modifier(IconModifier())
            Spacer()
            Text(imgTxt)
        }
    }
}

struct RightRows: View {
    var imgName: String
       var imgTxt: String
    var body: some View {
        HStack{
            Text(imgTxt)
            Spacer()
            Image(imgName)
                .resizable()
                .modifier(IconModifier())
        }
    }
}
