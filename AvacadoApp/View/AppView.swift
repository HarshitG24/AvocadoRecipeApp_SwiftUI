//
//  AppView.swift
//  AvacadoApp
//
//  Created by Harshit Gajjar on 6/4/20.
//  Copyright © 2020 ThinkX. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AvacadosView()
                .tabItem({
                        Image("tabicon-branch")
                        Text("Avacados")
                })
            
            ContentView()
            .tabItem({
                    Image("tabicon-book")
                    Text("Recipes")
            })
            
            RipeningStagesView()
            .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
            })
            
            SettingsView()
            .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
            })
        }
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
             AppView()
            .environment(\.colorScheme, .dark)
            
            AppView()
            .environment(\.colorScheme, .light)
        }
    }
}
