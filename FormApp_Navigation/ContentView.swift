//
//  ContentView.swift
//  FormApp_Navigation
//
//  Created by dzikru arya on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
//                section profile name
                Section(){
                    NavigationLink(destination: AboutView()){
                        HStack{
                            Image("profile")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading){
                                Text("Dzikru Arya Dev").font(.headline)
                                Text("Mobile App Developer").font(.caption)
                            }
                        }
                    }
                    
                }.listRowInsets(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                
//                Section General Settings
                Section(header : Text("General Settings") ){
                    NavigationLink(destination: AboutView()){
                        
                        HStack(spacing: 20){
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.yellow)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            
                            Text("Favorite Message")
                        }.padding(.top, 2)
                            .padding(.bottom, 2)
                    }
                    
                    NavigationLink(destination: AboutView()){
                        
                        HStack(spacing: 20){
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            
                            Text("Desktop/Web")
                        }.padding(.top, 2)
                            .padding(.bottom, 2)
                    }
                        
                }.listRowInsets(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 5))
                
                
//                Section Acount Settings
                Section(header : Text("Account Settings") ){
                    NavigationLink(destination: AboutView()){
                        
                        HStack(spacing: 20){
                            Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            
                            Text("Personal Settings")
                        }.padding(.top, 2)
                            .padding(.bottom, 2)
                    }
                    
                    ZStack(alignment:.leading ) {
                        
                        HStack(spacing: 20){
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            
                            Text("Chat settings")
                        }.padding(.top, 2)
                            .padding(.bottom, 2)
                        
                        NavigationLink(destination: AboutView()){
                            
                            
                            
                        }.opacity(0.0)
                    }
                }.listRowInsets(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 5))
            }.navigationTitle("Profile")
        }
    }
}

#Preview {
    ContentView()
}

struct AboutView: View {
    var body: some View {
        Text("About Page")
    }
}
