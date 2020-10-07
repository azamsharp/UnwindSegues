//
//  CView.swift
//  LearnSwiftUI
//
//  Created by Mohammad Azam on 10/6/20.
//

import SwiftUI

struct ViewC: View {
    
    @Binding var rootActive: Bool
    
    var body: some View {
        VStack {
            Text("View C")
            Button("Go to View A") {
                rootActive = false
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CView_Previews: PreviewProvider {
    static var previews: some View {
        ViewC(rootActive: .constant(false))
    }
}
