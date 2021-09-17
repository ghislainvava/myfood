//
//  ContentView.swift
//  spinner
//
//  Created by Vachet Ghislain on 16/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("ohmyfood")
                .font(Font.custom("Shrikhand-Regular", size: 30))
                .frame(
                    width: 200,
                    height: 50
                )
            Label("Paris,Belleville", systemImage: "mappin.circle")
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 50,
                    maxHeight: 50
                )
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.897, green: 0.897, blue: 0.897)/*@END_MENU_TOKEN@*/)
            VStack {
                Label("Réservez le menu qui vous convient", systemImage: "")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    
                    .multilineTextAlignment(.center)
                    .frame(
                        maxWidth: 260)
                    Spacer()
                        .frame(maxHeight: 30)
                Label("Découvrez des restaurants d'exception, sélectionnés par nos soins.", systemImage: "")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 18, weight: .light))
                    .frame(maxWidth: 330)
                Spacer()
                    .frame(maxHeight: 30)
                
                Button(action: {
                    print("click")
                }){
                    Text("Explorez nos restaurants")
                        .foregroundColor(.white)
                        .font(.system(size:18 , weight: .bold))
                }
                .frame(
                    minWidth: 240, minHeight: 50 )
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.475, blue: 0.855, alpha: 1)), Color(#colorLiteral(red: 0.576, green: 0.337, blue: 0.863, alpha: 1))]), startPoint: .bottomLeading, endPoint: .topTrailing))
                .cornerRadius(25.0)
            }
            .frame(
                maxWidth: .infinity,
                minHeight: 280)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.956, green: 0.956, blue: 0.956)/*@END_MENU_TOKEN@*/)
            .padding(.top, -8.0)
            
            VStack (alignment: .leading){
                Text("Fonctionnement")
                    .padding()
                
                ZStack
                {
                    Label("", systemImage: "")
                        .frame(maxWidth: .infinity, maxHeight: 75 )
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.956, green: 0.956, blue: 0.956)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(15.0)
                        .padding(.horizontal)
                    
                    Image(systemName: "1.circle.fill").foregroundColor(Color(red: 0.592, green: 0.34, blue: 0.862))
                        .font(.system(size: 25))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    HStack {
                        Image(systemName: "iphone")
                        Label("Choisissez un restaurant" , systemImage: "")
                    }
                }.frame( maxWidth: .infinity)
                
                ZStack
                {
                    Label("", systemImage: "")
                        .frame(maxWidth: .infinity, maxHeight: 75 )
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.956, green: 0.956, blue: 0.956)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(15.0)
                        .padding(.horizontal)
                    
                    Image(systemName: "2.circle.fill").foregroundColor(Color(red: 0.592, green: 0.34, blue: 0.862))
                        .font(.system(size: 25))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    HStack {
                        Image(systemName: "list.bullet")
                        Label("Choisissez un restaurant" , systemImage: "")
                    }
                }.frame( maxWidth: .infinity)
                
                ZStack
                {
                    Label("", systemImage: "")
                        .frame(maxWidth: .infinity, maxHeight: 75 )
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.956, green: 0.956, blue: 0.956)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(15.0)
                        .padding(.horizontal)
                    
                    Image(systemName: "3.circle.fill").foregroundColor(Color(red: 0.592, green: 0.34, blue: 0.862))
                        .font(.system(size: 25))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    HStack {
                        Image(systemName: "iphone")
                        Label("Choisissez un restaurant" , systemImage: "fork.circle")
                    }
                }.frame( maxWidth: .infinity)
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
