//
//  ContentView.swift
//  spinner
//
//  Created by Vachet Ghislain on 16/09/2021.
//

import SwiftUI

struct ContentView: View {
    //    @State var press = false
    //    @State var opacity = 1.0
    var medaillons: [Medaillon] = []
    var choices: [Choice] = []
    
    var body: some View {
        ScrollView {
            VStack{
                VStack{
                    VStack {
                        Text("ohmyfood")
                            .font(Font.custom("Shrikhand-Regular", size: 30))
                        
                        Label("Paris,Belleville", systemImage: "mappin.circle")
                            .frame(
                                minWidth: 0,
                                maxWidth: .infinity,
                                minHeight: 50,
                                maxHeight: 50
                            )
                            .background(Color(red: 0.897, green: 0.897, blue: 0.897))
                    }
                    VStack {
                        Text("Réservez le menu qui vous convient")
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            .multilineTextAlignment(.center)
                            .frame(
                                maxWidth: 260)
                        Spacer()
                            .frame(maxHeight: 30)
                        Text("Découvrez des restaurants d'exception, sélectionnés par nos soins.")
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
                    .frame( maxWidth: .infinity,minHeight: 280)
                    .background(Color(red: 0.956, green: 0.956, blue: 0.956))
                    .padding(.top, -8.0)
                    
                    
                    VStack (alignment: .leading, spacing:30){
                        
                        NavigationView{
                        
                        List(choices) { choice in
                            NavigationLink(destination: Text(choice.message)){
                            HStack{
                                
                              
                                Image(systemName: choice.nomIcone)
                                    .foregroundColor(Color(red: 0.592, green: 0.34, blue: 0.862))
                                    .font(.system(size: 25))
                                    .frame(alignment: .leading)
                                
                               
                                    Image(systemName: choice.nomImage)
                                    Text(choice.message )
                                }
                            
                            .navigationTitle(Text("Fonctionnement"))
                                    
                            }
                        }
                    }
                    }.frame(height: 400)
                        
                    
                    List(medaillons) { medaillon in
                        VStack{
                            ZStack{
                                Image(medaillon.restaurant)
                                    .resizable()
                                    .frame(width: 360.0, height: 175.0)
                            }.padding(.vertical, -8.0)
                            HStack{
                                VStack(alignment: .leading){
                                    Text(medaillon.restaurant)
                                    Text(medaillon.lieu)
                                }
                                Spacer()
                                Image(systemName: "heart")
                            }.padding()
                                .frame(width:360.0, height:60.0)
                                .background(Color.white)
                            
                        }.frame(maxWidth: .infinity, maxHeight: 250)
                            .cornerRadius(20)
                            .padding()
                            .shadow(color: Color(red: 0.89, green: 0.891, blue: 0.89), radius: 7, x: 7, y: 7)
                    }.frame( maxWidth: .infinity, minHeight: 0, idealHeight: 600, maxHeight: .infinity)
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        
           // ContentView(medaillons: testData, choices: simpleData)
        ContentView(medaillons: testData,choices: simpleData)
        
       
            
    }
}
