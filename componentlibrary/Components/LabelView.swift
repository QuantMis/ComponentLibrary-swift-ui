//
//  LabelView.swift
//  componentlibrary
//
//  Created by Israa on 25/08/2023.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack {
            Label {
                Text("Israa Saifullah")
                    .font(.body)
                    .foregroundColor(.primary)
                Text("Dev")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } icon: {
                Circle()
                    .fill(.blue)
                    .frame(width: 44, height: 44, alignment: .center)
                    .overlay(Text("IS"))
            }
        }
            
           
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}

struct RedBorderedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .border(Color.red)
    }
}
