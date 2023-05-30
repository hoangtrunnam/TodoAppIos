//
//  LoginView.swift
//  TodoListIosAcademy
//
//  Created by Duc Anh on 25/05/2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var logginViewModel = LogginViewViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack{
                HeaderView(title: "Todo list", subtitle: "Gets thing done", angle: 15, backgroundColor: Color.pink)
                
                Form {
                    TextField("email address", text: $logginViewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("pass word", text: $logginViewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Login", backGround: .blue, action: {
                        // atem login
                    })
                    .padding()
                }
                .offset(y: -50)
                
                VStack {
                    Text("new Btn")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
