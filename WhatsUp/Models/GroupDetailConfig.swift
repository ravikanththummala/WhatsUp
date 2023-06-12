//
//  GroupDetailConfig.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 6/11/23.
//

import Foundation
import SwiftUI

struct GroupDetailConfig {
    
    var chatText: String = ""
    var sourceType: UIImagePickerController.SourceType?
    var selectedImage: UIImage?
    var showOptions: Bool = false
    
    mutating func clearForm() {
        chatText = ""
        selectedImage = nil
    }
    
    var isValid: Bool {
        !chatText.isEmptyOrWhiteSpace || selectedImage != nil
    }
    
}
