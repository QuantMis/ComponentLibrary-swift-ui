//
//  TagView.swift
//  componentlibrary
//
//  Created by Israa on 23/08/2023.
//

import SwiftUI
struct TagView: View {
    let title:String
    let color:Color
    var body: some View {
        Text(title)
            .font(.headline)
            .padding(EdgeInsets.init(top: 5, leading: 10, bottom: 5, trailing: 10))
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(15)
         
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(title: "Urgent", color: AppPalette.primary)
    }
}
