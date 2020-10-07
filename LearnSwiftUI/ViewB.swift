//
//  BView.swift
//  LearnSwiftUI
//
//  Created by Mohammad Azam on 10/6/20.
//

import SwiftUI

struct ViewB: View {
    
    @Binding var rootActive: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text("View B")
                .font(.largeTitle)
          
            NavigationLink("Go to View C", destination: ViewC(rootActive: $rootActive))
           
            Spacer() 
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct BView_Previews: PreviewProvider {
    static var previews: some View {
        ViewB(rootActive: .constant(false))
    }
}
