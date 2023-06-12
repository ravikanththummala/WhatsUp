//
//  ErrorView.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 6/11/23.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper:ErrorWrapper
    var body: some View {
        
        VStack {
            Text("An error has occured")
                .font(.title)
                .padding(.bottom)
            
            Text(errorWrapper.error.localizedDescription)
                .font(.headline)

            Text(errorWrapper.guidance)
                .font(.caption)
                .padding(.top)
            Spacer()
        }.padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
    }
}

struct ErrorView_Previews: PreviewProvider {
    
    enum sampleError:Error{
        case errorRequest
    }
    static var previews: some View {
        ErrorView(errorWrapper: ErrorWrapper(error: sampleError.errorRequest,guidance: "Error has failed"))
    }
}
