//
//  SettingsView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/4/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 8)
                
                Text("Avacados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }.padding()
            
            Form{
                // MARK: - SECTION 1
                Section(header: Text("General Settings")){
                    Toggle(isOn: self.$enableNotification){
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: self.$backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                
                //MARK: - SECTION 2
                
                Section(header: Text("Application")) {
                    if enableNotification {
                        ApplicationRow(txt: "Product", val: "Avocado Recipes")
                        ApplicationRow(txt: "Compatibility", val: "iPhone & iPad")
                        ApplicationRow(txt: "Developer", val: "Harshit Gajjar")
                        ApplicationRow(txt: "Designer", val: "Robert")
                        ApplicationRow(txt: "Website", val: "swiftuimasterclass.com")
                        ApplicationRow(txt: "Version", val: "1.0.0")
                    } else {
                        HStack{
                            Text("Personal Message").foregroundColor(Color.gray)
                            Spacer()
                            Text("Happy Coding")
                        }
                    }
                   
                }
            }
            
        }.frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct ApplicationRow: View {
    var txt: String
    var val: String
    var body: some View {
        HStack{
            Text(txt).foregroundColor(Color.gray)
            Spacer()
            Text(val)
        }
    }
}
