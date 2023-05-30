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
        NavigationView {
            VStack{
                HeaderView(title: "Todo list", subtitle: "Gets thing done", angle: 15, backgroundColor: Color.pink)
                
                Form {
                    TextField("email address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("pass word", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Login")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
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
