//
//  ContentView.swift
//  VisitCard
//
//  Created by иван Бирюков on 16.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("ivan")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.black, lineWidth: 5)
                    )
                Text("Ivan Biriukov")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                ExtractedView(text: "Grottt0@mail .ru", imageName: "envelope.fill")
                ExtractedView(text: "123456789", imageName: "phone")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


