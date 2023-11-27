//
//  AppNavigator.swift
//  NewLearning
//
//  Created by Ahmad Qureshi on 27/11/23.
//

import SwiftUI

final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case second(data: String)
        case third(data: String)
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
