//
//  ContentView.swift
//  NewLearning
//
//  Created by Ahmad Qureshi on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Button {
                router.navigate(to: .second(data: "Ahmad"))
            } label: {
                Text("Next")
                    .foregroundStyle(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.brown)
                    }
            }
            
            Text("Root View Controller")
        }
    }
}

#Preview {
    ContentView()
}
