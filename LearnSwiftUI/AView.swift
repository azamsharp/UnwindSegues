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
                destination: BView(rootIsActive: $isActive),
                isActive: $isActive) {
                Text("View A")
            }
            
        }
        .navigationTitle("View A")
        .embedInNavigationView()
    }
}

struct AView_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
