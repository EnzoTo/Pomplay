//
//  File.swift
//  Pomplay
//
//  Created by Enzo Toraldo on 22/04/21.
//

import SwiftUI
struct Home: View {
    
    @State var selected = servers.first!
    
    @State var showFilter = false
    
    @State var showFilter2 = false
    
    @State var color = Color.white
    
    @State var Nickname = ""
    
    var body: some View {
        
        ZStack {
            Image("Sfondo-1")
                .resizable()
                .frame(width: 584, height: 984, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                Spacer()
            
            Button(action: {
//                        withAnimation{showFilter2 = true}
                }, label: {
                    Text("POMPLAY")
                        .font(.custom("CUSTOM", size: 60))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
//                        .padding(.bottom, 500.0)
//                        .offset(y: showFilter2 ? 1 : UIScreen.main.bounds.height / 4)
                    
      //Tasto lingua
                    

                })
                
                Spacer()
                
            Button(action: {
                    withAnimation{showFilter.toggle()}
            },label: {
                Text("Choose your language")
                    .font(.custom("CUSTOM", size: 30))
                    .foregroundColor(.white)
                    .padding(.bottom, 120)
                    
                
            
            })
         }
            
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.white)
                .frame(width: 440, height: 400, alignment: .center)
                .offset(y: showFilter ? UIScreen.main.bounds.height / 2 : UIScreen.main.bounds.height)
        }
    }
    
    
    
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

