//
//  LoginPageLogic.swift
//  LoginPageTest
//
//  Created by Tufail Ahmad on 25/10/23.
//


import Foundation

class LoginPageViewVeiwModel : ObservableObject{
    @Published var username = ""
    @Published var Mobile = ""
    @Published var  password = ""
    @Published var confirmPassword = ""
    @Published var  errorMessage = ""
    init(){}
    
    
    func login(){
        guard validateUsername() && validateMobile() && validatePassword() && validateConfirmPassword()  else {
            return
        }
        print("Login successful")
        
    }
    func validateUsername()-> Bool {
        errorMessage = ""
        guard username.contains("@") && username.contains(".") else {
            errorMessage = "Please enter valid email"
            print("\(errorMessage)")
            return false
            
        }
        return true
    }
    
    func validateMobile() -> Bool {
        
        guard Mobile.count >= 10 else{
            errorMessage = " Please enter valid phone number"
            print("\(errorMessage)")
            return false
            
        }
        return true
    }
    
    func validatePassword() -> Bool{
        guard password.count > 7 else {
            errorMessage = "Keep Strong password"
            print("\(errorMessage)")
            return false
        }
        return true
    }
    func validateConfirmPassword () -> Bool{
        guard confirmPassword == password else {
            errorMessage = "Password does not match"
            print("\(errorMessage)")
            return false
        }
        return true
    }
    
}
