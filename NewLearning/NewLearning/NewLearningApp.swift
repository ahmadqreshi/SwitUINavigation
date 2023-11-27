//
//  NewLearningApp.swift
//  NewLearning
//
//  Created by Ahmad Qureshi on 27/11/23.
//

import SwiftUI

@main
struct NewLearningApp: App {
    @StateObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                ContentView()
                    .onOpenURL { url in
                        DeepLink(router: router).open(url: url)
                    }
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
                        case .second(let data):
                            SecondView(data: data)
                            
                        case .third(let data):
                            ThirdView(data: data)
                        }
                    }
            }
            .environmentObject(router)
        }
    }
}
