//
//  MainView.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 11/07/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            GroupListContainerView()
               
                .tabItem {
                    Label("Chats", systemImage: "message.fill")
                }
            
           
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
