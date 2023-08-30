//
//  ButtonWithLogoView.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI

struct ButtonWithLogoView: View {
    let title: String
    let action: () -> Void
    var body: some View {
        
        HStack {
            Image(systemName: "globe").foregroundColor(.white)
            Text(title)
                .fontWeight(.bold)
                .font(.title3)
            
                .foregroundColor(.white)
            
        }
        .frame(width: UIScreen.main.bounds.width - 30, height: 44)
        .background(AppPalette.primary)
        .cornerRadius(10)
        
    }
}

struct ButtonWithLogoView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithLogoView(title: "Button", action: {})
    }
}
