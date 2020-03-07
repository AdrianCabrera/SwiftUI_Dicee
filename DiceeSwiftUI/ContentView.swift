//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Adrian Cabrera on 07/03/2020.
//  Copyright © 2020 Adrian Cabrera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumer = 1
    @State var rightDiceNumer = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number:leftDiceNumer)
                    DiceView(number:rightDiceNumer)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumer = Int.random(in: 1...6)
                    self.rightDiceNumer = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size:50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            
        }
    }
}


struct DiceView: View {
    
    let number:Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
    }
}

