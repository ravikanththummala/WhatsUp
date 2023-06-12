//
//  AppState.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 11/07/23.
//

import Foundation
 
enum LoadingStatus:Hashable, Identifiable{
    case idle
    case loading(String)
    
    var id:Self{
        return self
    }
}

enum Route: Hashable {
    case main
    case login
    case signUp
}

class AppState: ObservableObject {
    @Published var routes: [Route] = []
    @Published var loadingState: LoadingStatus = .idle
    @Published var errorWrapper: ErrorWrapper?

}
