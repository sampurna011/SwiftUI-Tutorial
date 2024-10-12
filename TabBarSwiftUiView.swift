//
//  ContentView.swift
//  TabBarViewWithBadges
//
//  Created by Deepu mishra on 13/10/24.
//

import SwiftUI

struct TabBarSwiftUiView: View {
    var body: some View {
        TabView {
            Text("First TabBar SwiftUI View") // Here er can use our custom file
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favourite")
                }
                .badge(20)
            
            Text("Second TabBar SwiftUI View")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favourite")
                }
                .badge(5)
            
            
            Text("Third TabBar SwiftUI View")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favourite")
                }
                .badge("New")
        }
        .accentColor(.blue)
    }
}

#Preview {
    TabBarSwiftUiView()
}
