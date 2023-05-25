//
//  TodoListIosAcademyApp.swift
//  TodoListIosAcademy
//
//  Created by Duc Anh on 25/05/2023.
//
import FirebaseCore
import SwiftUI

@main
struct TodoListIosAcademyApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
 
