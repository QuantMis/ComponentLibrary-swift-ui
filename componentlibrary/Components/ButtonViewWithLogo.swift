//
//  ButtonViewWithLogo.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI

struct ButtonViewWithLogo: View {
    let title: String
    let action: () -> Void
    var body: some View {
        VStack(alignment: .leading) {
                    Button(title, action: action)
                    .fontWeight(.bold)
                    .font(.title3)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 44)
                    .background(AppPalette.primary)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
    }
}

struct ButtonViewWithLogo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Button", action: {})
    }
}
