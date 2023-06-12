//
//  LoadingView.swift
//  WhatsUp
//
//  Created by Ravikanth Thummala on 6/11/23.
//

import SwiftUI

struct LoadingView: View {
    let message:String
    var body: some View {
        HStack(spacing: 10){
            ProgressView()
                .tint(.white)
            Text(message)
        }.padding(10)
            .background(.gray)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16,style: .continuous))
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(message: "Sending....")
        
    }
}
