//
//  SwiftUIView.swift
//  VisitCard
//
//  Created by иван Бирюков on 17.03.2023.
//

import SwiftUI

struct ExtractedView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedView(text: "hello", imageName: "phone")
            .previewLayout(.sizeThatFits)
    }
}
