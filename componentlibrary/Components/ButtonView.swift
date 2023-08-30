//
//  ButtonView.swift
//  componentlibrary
//
//  Created by Israa on 23/08/2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    var body: some View {
        
        Button(title, action: action)
            .fontWeight(.bold)
            .font(.title3)
            .frame(width: UIScreen.main.bounds.width - 30, height: 44)
            .background(AppPalette.primary)
            .foregroundColor(.white)
            .cornerRadius(10)
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Button", action: {})
    }
}
