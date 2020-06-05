//
//  RipeningView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/5/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct RipeningView: View {
    
    // MARK: - PROPERTY
    @State private var slideAnimation: Bool = false
    var ripening: Ripening
    
    var body: some View {
        VStack {
            Image(ripening.image)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .clipShape(Circle())
            .background(
              Circle()
                .fill(Color("ColorGreenLight"))
                .frame(width: 110, height: 110, alignment: .center)
            )
            .background(
              Circle()
                .fill(Color("ColorAppearanceAdaptive"))
                .frame(width: 120, height: 120, alignment: .center)
            )
            .zIndex(1)
                .animation(Animation.easeInOut(duration: 1))
                .offset(y: self.slideAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10){
                // STAGE
                VStack(alignment: .center, spacing: 0){
                    Text("1")
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    Text("Stage")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                       
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 60)
                .frame(width: 180)
                
                // TITLE
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .background(
                       RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: .init(colors: [
                            Color.white,
                            Color("ColorGreenLight")
                        ]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                // DESCRIPTION
                Spacer()
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                
                // RIPENS
                Text(ripening.ripeness)
                    .foregroundColor(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        LinearGradient(gradient: .init(colors: [
                         Color("ColorGreenMedium"),
                         Color("ColorGreenDark")
                        ]), startPoint: .top, endPoint: .bottom)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                // INSTRUCTION
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(LinearGradient(gradient: .init(colors: [
             Color("ColorGreenLight"),
             Color("ColorGreenMedium")
            ]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .onAppear(){
            self.slideAnimation.toggle()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[0])
    }
}
