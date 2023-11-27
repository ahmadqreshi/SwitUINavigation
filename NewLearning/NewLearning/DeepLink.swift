//
//  DeepLink.swift
//  NewLearning
//
//  Created by Ahmad Qureshi on 27/11/23.
//

import SwiftUI

struct DeepLink {
    @ObservedObject var router: Router
   
    func open(url: URL) {
        router.navigate(to: .third(data: "Ahmad Qureshi"))
    }
}
