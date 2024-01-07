//
//  ContentView.swift
//  StateManagement
//
//  Created by Melik Demiray on 7.01.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    @State var counter = 0

    var body: some View {
        VStack {
            AddButton(counter: $counter)
            Text("Counter: \(counter)")
        }
    }
}

struct AddButton: View {
    @Binding var counter: Int

    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Text("Add")
        }
    }
}

#Preview {
    ContentView()
}




