//
//  ContentView.swift
//  ArtemCard
//
//  Created by Artem Tkachuk on 7/29/20.
//  Copyright © 2020 Artem Tkachuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.16, blue: 0.34, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("artem")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Artem Tkachuk")
                    .font(Font.custom("Orbitron-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+1 (916) 559 - 46 - 70", imageName: "phone.fill")
                InfoView(text: "atkachuk@berkeley.edu", imageName: "envelope.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


