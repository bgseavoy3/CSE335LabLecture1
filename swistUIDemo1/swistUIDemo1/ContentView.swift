//
//  ContentView.swift
//  swistUIDemo1
//
//  Created by bseavoy on 1/15/25.
//

import SwiftUI

struct ContentView: View {
    @State var fName: String = ""
    @State var lName: String = ""
    @State var greeting: String = ""
    @State var backgroundColor: Color = Color.white
    var body: some View {
        VStack {
            Text("Welcome to CSE335!")
            Spacer()
            HStack {
                Text("First Name: ")
                Spacer()
                Spacer()
                TextField("please enter your first name here", text: $fName)
            }
            HStack {
                Text("Last Name: ")
                Spacer()
                Spacer()
                TextField("please enter your last name here", text: $lName)
            }
            Button("Enter", action: {
                if(fName != "" && lName != "")
                {
                    greeting = fName + " " + lName + " Welcome to CSE335"
                }
            })
            
            Text(greeting)
            VStack {
                if(greeting != "")
                {
                    Text("Change Background Color")
                    HStack {
                        Button("Green", action: {
                            backgroundColor = Color.green
                        })
                        Button("Orange", action: {
                            backgroundColor = Color.orange
                        })
                        Button("White", action: {
                            backgroundColor = Color.white
                        })
                    }
                }
            }
            Spacer()
            Text("Made By Braden Seavoy")
        }

        .background(backgroundColor.ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}

