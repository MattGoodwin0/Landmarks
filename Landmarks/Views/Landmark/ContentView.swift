//
//  ContentView.swift
//  Landmarks
//
//  Created by Matthew Goodwin on 09/04/2021.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject var modelData: ModelData

    @State private var selection: Tab = .featured
	@State private var showingProfile = false

    
    enum Tab {
        case featured
        case list
		case profile
    }
    
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            CategoryHome()
                .tabItem { Label("Featured", systemImage: "star") }
                .tag(Tab.featured)
            
            LandmarkList()
				.tabItem { Label("List", systemImage: "list.dash") }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
