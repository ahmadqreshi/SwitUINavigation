//
//  SecondViwe.swift
//  NewLearning
//
//  Created by Ahmad Qureshi on 27/11/23.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var router: Router
    
    var data: String
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello \(data)")
            Button(action: {
                router.navigate(to: .third(data: data))
            }, label: {
                Text("Push to Third View")
            })
        }
            .navigationTitle("Second View")
    }
}

#Preview {
    SecondView(data: "Ahmad")
}
