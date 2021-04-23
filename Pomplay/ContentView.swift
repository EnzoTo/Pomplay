//
//  ContentView.swift
//  Pomplay
//
//  Created by Enzo Toraldo on 19/04/21.
//

import SwiftUI

extension Color {
    static let bgWhite = Color(red: 249 / 255, green: 245 / 255, blue: 235 / 255)
}

struct ContentView: View {
    
    @State private var showFile2 = false
    
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
            
            Button(action: {
                    withAnimation{showFilter.toggle()}
            },label: {
                Text("Choose your language")
                    .font(.custom("CUSTOM", size: 30))
                    .foregroundColor(.white)
                    .padding(.top, 700)
            })
            
            //finestra dal basso
            
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.bgWhite)
                .frame(width: 430, height: 200, alignment: .center)
                .padding(.top, 730.0)
                .offset(y: showFilter ? 0 : UIScreen.main.bounds.height / 2)
            
            //finestra grande
            
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.white)
                .frame(width: 440, height: 700, alignment: .center)
                .padding(.top, 500.0)
                .offset(y: showFilter2 ? 0 : UIScreen.main.bounds.height / 1)
            
            VStack {
            
                TextField("Nickname", text: self.$Nickname)
                    .frame(width: 320, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.black.opacity(0.12))
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .offset(y: showFilter2 ? 0 : UIScreen.main.bounds.height / 1)
                    .padding(60)
                    .padding(.top, 350)
                
                Button(action: {
                    self.showFile2.toggle()
                },label: {
                    Text("START")
                        .frame(width: 320, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color.green.opacity(0.8))
                        .cornerRadius(12)
                        .font(.custom("CUSTOM", size: 30))
                        .foregroundColor(.white)
                        .offset(y: showFilter2 ? 0 : UIScreen.main.bounds.height / 1)
                        .sheet(isPresented: $showFile2){MapExample()
                        }
               
                })
         }
            
            VStack {
                
                //Tasto Pomplay
                
                
                
            Button(action: {
                        withAnimation{showFilter2 = true}
                }, label: {
                    Text("POMPLAY")
                        .font(.custom("CUSTOM", size: 60))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.bottom, 300.0)
                        .offset(y: showFilter2 ? 1 : UIScreen.main.bounds.height / 7)
                    
      //Tasto lingua

                })
                
               
}
            HStack(spacing: 10) {


            ForEach(servers){server in

                //bandiere

                Image(server.flag)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45, height: 45)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .background(Circle().stroke(Color.gray.opacity(selected.id == server.id ? 1 : 0), lineWidth: 12))
                    .padding([.horizontal, .top])
                    .padding(.top, 600.0)
                    .offset(y: showFilter ? 0 : UIScreen.main.bounds.height / 2)
                    .onTapGesture {
                        withAnimation{
                            showFilter.toggle()
                            selected = server}



                    }
                    .onTapGesture (perform: {
                        withAnimation{showFilter.toggle()}
                    })
}
    }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

// Server Model And Model Data....

struct server: Identifiable {
    
    var id = UUID().uuidString
    var name:String
    var flag:String
    
}

var servers = [

    server(name: "Germania", flag: "It"),
    server(name: "Italia", flag: "Ger"),
    server(name: "England", flag: "Eng"),
    server(name: "Spain", flag: "Sp"),
    server(name: "China", flag: "Ch")
]
