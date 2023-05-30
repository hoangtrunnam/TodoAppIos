//
//  TLButton.swift
//  TodoListIosAcademy
//
//  Created by hoang trung nam on 30/05/2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backGround: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backGround)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", backGround: .pink) {
            
        }
    }
}
