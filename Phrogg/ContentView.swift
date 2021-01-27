//
//  ContentView.swift
//  Phrogg
//
//  Created by Tobin Caldwell on 1/20/21.
//

import SwiftUI

let tap = "You get phrogg"

struct ContentView: View {
    @State var showDetails = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
        VStack {
            Button(action: {
            self.showDetails.toggle()
    })
        {
            Text("Tap me for phrogg")
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(10)
                .background(Color.blue)
                .cornerRadius(40)
                .foregroundColor(.orange)
                .font(.title)
                .padding(7)
        }
            if showDetails{
                let number = Int.random(in: 1...21)
                let phrogg = String(number)
                VStack{
                Text(tap)
                Image(phrogg)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(40)
                    .padding()
                    
                }
                .background(ColorManager.phrogggreen)
                .cornerRadius(40)
            }
    }
    }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
