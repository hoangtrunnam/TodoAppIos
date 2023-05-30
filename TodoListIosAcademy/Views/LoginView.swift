//
//  LoginView.swift
//  TodoListIosAcademy
//
//  Created by Duc Anh on 25/05/2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            HeaderView()
            
            Form {
                TextField("email address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("pass word", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Spacer()
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
