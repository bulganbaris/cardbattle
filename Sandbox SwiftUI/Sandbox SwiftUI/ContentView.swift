//
//  ContentView.swift
//  Sandbox SwiftUI
//
//  Created by Barış Bulgan on 29.01.2022.
//

import SwiftUI


 
struct ContentView: View {
    
    @State var playerCard = 2
    @State var cpuCard = 2
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var winner = "Best of 10 wins"
    var body: some View {
        
       
        
        ZStack {
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo").padding()
                Spacer()
                Text(winner).font(.title).fontWeight(.bold).foregroundColor(.white)
                
                HStack{
                    VStack {
                        HStack {
                            Text("Player")
                                .font(.title2)
                                .fontWeight(.bold).foregroundColor(.white)
                            
                        }
                        VStack {
                            Image("card\(playerCard)").padding()
                            
                            Text(String(playerScore)).font(.title).fontWeight(.bold).foregroundColor(.white)
                        }
                    }
                    Spacer()
                    VStack {
                        
                        Text("CPU")
                            .font(.title2)
                            .fontWeight(.bold).foregroundColor(.white)
                            
                        
                        VStack {
                            Image("card\(cpuCard)").padding()
                            Text(String(cpuScore))
                                .font(.title)
                                .fontWeight(.heavy).foregroundColor(.white)
                        }
                    }
                    
                    
                }.padding()
                Spacer()
                Button("DEAL") {
                    playerCard = Int.random(in: 2..<14)
                    cpuCard = Int.random(in: 2..<14)
                    if playerCard > cpuCard
                    {playerScore += 1}
                    else if playerCard == cpuCard
                    {playerCard += 0}
                    else
                    {cpuScore += 1}
                    if playerScore == 10{
                        playerScore = 0
                        cpuScore = 0
                        winner = "Player Won"
                        
                        }
                    else if cpuScore == 10{
                        playerScore = 0
                        cpuScore = 0
                        winner = "CPU Won"
                    }
                    else{
                        winner = "Best of 10 wins"
                    }
                }.padding(.all, 30.0).background(.red).foregroundColor(.white)
                Spacer()
                
                
              
             

                    
            }
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}
