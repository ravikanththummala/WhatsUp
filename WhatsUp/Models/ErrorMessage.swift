//
//  ErrorMessage.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 6/11/23.
//

import Foundation

struct ErrorWrapper:Identifiable {
    let id = UUID()
    let error:Error
    var guidance:String = ""
}
