//
//  ThirdView.swift
//  NewLearning
//
//  Created by Ahmad Qureshi on 27/11/23.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var router: Router
    
    var data: String
    var body: some View {
        VStack {
            Button(action: {
                router.navigateBack()
            }, label: {
                Text("Back")
            })
            
            Button(action: {
                router.navigateToRoot()
            }, label: {
                Text("Back To root")
            })
            
            Text("Hello, How Are you \(data)")
            
            
        }
        .navigationTitle("Third View")
        .navigationBarHidden(true)
    }
}

#Preview {
    ThirdView(data: "Ahmad")
}
