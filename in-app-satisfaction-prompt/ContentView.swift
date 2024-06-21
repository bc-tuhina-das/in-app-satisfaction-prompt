//
//  ContentView.swift
//  in-app-satisfaction-prompt
//
//  Created by Tuhina Das on 6/20/24.
//

import SwiftUI

extension Color{
    static let mainPurple = Color(red: 69/255, green: 99/255, blue: 235/255)
    static let lightPurple = Color(red:218/255, green:220/255, blue:232/255)
}

extension View{
   func getScreenBounds() -> CGRect{
   return UIScreen.main.bounds
   }
}

struct ContentView: View {
    
    var body: some View {
        VStack {
            HStack{
                Text("Review us")
                    .font(.headline)
                
                Spacer()
                Button("Sign In", systemImage: "xmark", action: printExit)
                    .labelStyle(.iconOnly)
                    .foregroundColor(.gray)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            
            HStack{
                Text("Let others know how you are enjoying the BigCommerce app with a review.")
                    .font(.subheadline)
                Spacer()
            }
    
            //TODO: clicking on the sides of the button don't work for it
            HStack{
                Button(action:printNoThanks){
                    Text("No thanks")
                }
                .frame(minWidth: 160, minHeight: 50)
                .foregroundColor(Color.mainPurple)
                .border(Color.mainPurple)
                .cornerRadius(5)
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 5)
                        //TODO: how to make the button's border thinner?
                        //TODO: is there a better way to style the rounded corners?
                        .stroke(Color.mainPurple, lineWidth: 2)
                )
                
                Spacer()
                
                Button(action:printOK){
                    Text("OK")
                }
                .frame(minWidth: 160, minHeight: 50)
                .background(Color.mainPurple)
                .foregroundColor(.white)
                .cornerRadius(5)
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.mainPurple, lineWidth: 2)
                )
            }
            .padding()
        }
        .frame(width: getScreenBounds().width * 0.85)
        .padding()
        .border(Color.lightPurple)
        .cornerRadius(20) /// make the background rounded
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.lightPurple, lineWidth: 1)
        )
    }
    
    func printExit(){
        print("Exit")
    }
    
    func printOK(){
        print("OK")
    }
    
    func printNoThanks(){
        print("No thanks")
    }
}

#Preview {
    ContentView()
}
