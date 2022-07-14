//
//  ContentView.swift
//  WeSplit
//
//  Created by Ethan Siapno on 7/13/22.
//

import SwiftUI

// Default View
struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Day 16 Code Examples

/* Forms */
//struct ContentView: View {
//
//    var body: some View {
//        Form {
//            Section {
//                Text("Hello, world!")
//                Text("Hello, world!")
//            }
//            Group {
//                Text("Hello, world!")
//                Text("Hello, world!")
//            }
//        }
//    }
//}

/* Navigation Bar */
//struct ContentView: View {
//    // NavBar layout
//    var body: some View {
//        NavigationView {
//            Form {
//                Section {
//                    Text("Hello, world!")
//                }
//            }
//            .navigationTitle("SwiftUI")
//            .navigationBarTitleDisplayMode(.inline)
//
//        }
//    }
//}

/* Button+State */
//struct ContentView: View {
//
//    @State var tapCount = 0
//
//    var body: some View {
//        Button("Tap Count: \(tapCount)") {
//            self.tapCount += 1
//        }
//    }
//}

/* Editable textfield and textbox */
//struct ContentView: View {
//    @State private var name = ""
//
//    var body: some View {
//        Form {
//            TextField("Enter your name", text: $name)
//            Text("Wuzzup \(name)")
//        }
//    }
//}

/* ForEach loops and Picker */
//struct ContentView: View {
//    let students = ["Harry", "Hermione", "Ron"]
//    @State private var selectedStudent = "Harry"
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Picker("Select your student", selection: $selectedStudent) {
//                    ForEach(students, id: \.self) {
//                        Text($0)
//                    }
//                }
//            }
//        }
//    }
//}
