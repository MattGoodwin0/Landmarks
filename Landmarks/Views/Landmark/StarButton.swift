//
//  StarButton.swift
//  Landmarks
//
//  Created by Matt Goodwin on 31/05/2021.
//

import SwiftUI

struct StarButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct StarButton_Previews: PreviewProvider {
    static var previews: some View {
        StarButton(isSet: .constant(true))
    }
}
