//
//  Image+Extensions.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 3/16/23.
//

import Foundation
import SwiftUI

extension Image {
    
    func rounded(width: CGFloat = 100, height: CGFloat = 100) -> some View {
        return self.resizable()
            .frame(width: width, height: height)
            .clipShape(Circle())
    }
    
}
