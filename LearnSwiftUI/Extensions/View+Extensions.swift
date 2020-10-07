//
//  View+Extensions.swift
//  LearnSwiftUI
//
//  Created by Mohammad Azam on 10/6/20.
//

import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
    
}
