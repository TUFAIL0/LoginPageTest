//
//  ContentView.swift
//  LoginPageTest
//
//  Created by Tufail Ahmad on 25/10/23.
//
import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = LoginPageViewVeiwModel()
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack{
                Image(systemName: "globe.central.south.asia.fill")
                    .resizable(resizingMode: .tile)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ , height: 100)
                    .padding(20)
                
                VStack {
                    Text("Login Page")
                        .foregroundStyle(.white)
                        .font(.title)
                    
                    HStack{
                        Text("Username")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        TextField("Registered Email",text:  $viewModel.username)
                            .font(.title2)
                    }.padding()
                        .border(Color.black, width: 5)
                    
                    HStack{
                        Text("Mobile")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        TextField("Mobile number",text:  $viewModel.Mobile)
                            .font(.title2)
                    }.padding()
                        .border(Color.black, width: 5)
                    
                    HStack{
                        Text("Password")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        SecureField("Password",text: $viewModel.password)
                            .font(.title2)
                    }.padding()
                        .border(Color.black, width: 5)
                    HStack{
                        Text("Re-enter password")
                            .foregroundStyle(.blue)
                            .font(.title2)
                        SecureField("Password",text:$viewModel.confirmPassword)
                            .font(.title2)
                    }.padding()
                        .border(Color.black, width: 5)
                    
                    
                    HStack{
                        Button("Login"){
                            print("Button Tapped")
                            viewModel.login()
                        }
                        .frame(width: 150 , height: 40)
                        .background(Color.white)
                        .border(.white, width: 3)
                        
                        
                        
                        HStack{
                            Button("Cancel"){
                            }
                            .frame(width: 150 , height: 40)
                            .background(Color.white)
                            .border(.white, width: 3)
                            .foregroundStyle(.red)
                            .clipShape(.capsule, style: FillStyle())
                        }
                    }
                    
                }
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
