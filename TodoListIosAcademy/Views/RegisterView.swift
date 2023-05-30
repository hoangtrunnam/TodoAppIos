//
//  RegisterView.swift
//  TodoListIosAcademy
//
//  Created by Duc Anh on 25/05/2023.
//

import SwiftUI

struct RegisterView: View {
    @State var fullName = ""
    @State var email = ""
    @State var passWord = ""
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start Organizing todos", angle: -15, backgroundColor: .orange)
            
            
            Form {
                TextField("Full name", text: $fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Pass word", text: $passWord)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account", backGround: .green, action: {
                    // atem login
                })
                .padding()
            }
            .offset(y: -50)
            
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
