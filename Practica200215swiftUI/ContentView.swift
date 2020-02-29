//
//  ContentView.swift
//  Practica200215swiftUI
//
//  Created by ByRamon on 2/15/20.
//  Copyright © 2020 ByRamon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //@State private var tapCount = 0
    //@State private var name = ""
    let students = ["John","Doe","Alice"]
    @State private var selectStudent = 0
    var body: some View {
        NavigationView{
            Form{
                Picker("Select your student", selection: $selectStudent){
                    ForEach(0 ..< students.count){
                        Text(self.students[$0])
                    }
                }
                Text("You chose: Student #\(students[selectStudent])")
            }
        }
        /*Form{
            TextField("Enter your name", text:$name)
            Text("Your name is \(name)")
        }
         VStack{
             Button ("Tap count: \(self.tapCount)") {
                 self.tapCount += 1
                 print("click \(self.tapCount)")
             }
        }
        Button(action:{
            print("Click del boton")
        }){
            Text("Button")
        }NavigationView{
            Form{
                Section{
                    Text("Hello, World!")
                        .font(.title)
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                Group{
                    Text("Hello, World!")
                        .font(.title)
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
            }.navigationBarTitle("SwiftUI", displayMode: .inline)*/
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
