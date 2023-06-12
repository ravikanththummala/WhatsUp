//
//  String+Extensions.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 11/07/23.
//

import Foundation

extension String {
    
    var isEmptyOrWhiteSpace: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
