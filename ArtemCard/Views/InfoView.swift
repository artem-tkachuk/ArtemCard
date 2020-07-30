//
//  InfoView.swift
//  ArtemCard
//
//  Created by Artem Tkachuk on 7/29/20.
//  Copyright © 2020 Artem Tkachuk. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(
                        Color(red: 0.87, green: 0.70, blue: 0.33, opacity: 1.00)
                )
                Text(text)
                    .foregroundColor(Color(.black))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+1 (916) 559 - 46 - 70", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
