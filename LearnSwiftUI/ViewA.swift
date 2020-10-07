//
//  AView.swift
//  LearnSwiftUI
//
//  Created by Mohammad Azam on 10/6/20.
//

import SwiftUI

struct ViewA: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        
        VStack {
            
            NavigationLink(
                destination: ViewB(rootActive: $isActive),
                isActive: $isActive,
                label: {
                    Text("Go to View B")
                })
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("View A")
        .embedInNavigationView()
        
    }
}

struct AView_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
