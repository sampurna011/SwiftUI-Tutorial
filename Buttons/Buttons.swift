//
//  Buttons.swift
//  SwiftUIBootCamp
//
//  Created by Deepu mishra on 26/09/24.
//

import SwiftUI

struct Buttons: View {
    
    @State private var buttonName: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(buttonName)
                .font(.system(size: 40, weight: .semibold))
            
            //
            Button("Press Me!") {
               print("Button 1")
                self.buttonName = "Button 1"
            }
            .frame(width: 100, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            //
            
            Button {
               print("Button 2")
                self.buttonName = "Button 2"
            } label: {
                Circle()
                    .fill(Color.red)
                    .frame(width: 100)
                    .shadow(radius: 5)
                    .overlay {
                        Text("Submit")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                    }
            }
            //
            
            Button {
               print("Button 3")
                self.buttonName = "Button 3"
            } label: {
                Text("Finish".uppercased())
                    .foregroundColor(.blue)
                    .font(.system(size: 20, weight: .bold))
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.blue, lineWidth: 2.0)
                        
                        )
            }
            
            
            //
            
            Button {
               print("Button 4")
                self.buttonName = "Button 4"
            } label: {
                Circle()
                    .fill(Color.red)
                    .frame(width: 60)
                    .shadow(radius: 5)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
            }
        }
    }
}

#Preview {
    Buttons()
}
