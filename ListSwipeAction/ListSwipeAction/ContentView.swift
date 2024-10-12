//
//  ContentView.swift
//  ListSwipeAction
//
//  Created by Deepu mishra on 13/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var fruitList: [String] = ["apple", "orange", "banana", "orange", "mango", "chickoo", "grapes"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruitList, id: \.self) { num in
                    Text(num.capitalized)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button("Mark as Junk") {
                                
                            }
                            .tint(.red)
                            Button("Archive") {
                                
                            }
                            .tint(.green)
                            Button("Save as") {
                                
                            }
                            .tint(.yellow)
                        }
                }
            }
            .navigationTitle("List with swipe action")
        }
    }
}

#Preview {
    ContentView()
}
