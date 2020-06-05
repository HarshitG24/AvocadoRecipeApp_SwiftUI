//
//  AvacadosView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/4/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct AvacadosView: View {
    // Mark: - Properties
    
    @State private var pulsateAnimation = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1.0 : 0.9)
                .opacity(self.pulsateAnimation ? 1.0 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avacados".uppercased())
                    .font(.system(size: 42, weight: .black, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
Creamy, green, and full of nutrients!
Avocado is a powerhouse ingredient at any meal.Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""").lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }.padding()
            
            Spacer()
            
        }.background(
          Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
        ).edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            // this will perform animation when view is already loaded in window.
            self.pulsateAnimation.toggle()
        })
    }
}

struct AvacadosView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            AvacadosView()
            .environment(\.colorScheme, .dark)
            
            AvacadosView()
            .environment(\.colorScheme, .light)
        }
    }
}
