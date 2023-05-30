//
//  RegisterView.swift
//  TodoListIosAcademy
//
//  Created by Duc Anh on 25/05/2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start Organizing todos", angle: -15, backgroundColor: .orange)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
