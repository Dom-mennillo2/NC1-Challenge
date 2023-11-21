//
//  ContentView.swift
//  NC1-Challenge
//
//  Created by Domenico Mennillo on 15/11/23.
//

import SwiftUI



struct SettingView: View  {
    var body: some View {
        List{
            VStack{
                Text("modifica")
                Text("salva")
            }
        }
    }
}


struct ContentView: View {
    @State var i : ElementiProm = ElementiProm()
    @State private var searchText: String = ""
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                
                VStack {
                    LazyVGrid(columns: Array(repeating: GridItem(), count: 2)){
                        ForEach(i.elementi) { index in
                            NavigationLink(destination: Home(num: index.cont)){ GroupBox(){
                                VStack(alignment: .leading, content: {
                                    
                                    HStack {
                                        Image(systemName: index.nomeSimbolo)
                                            .font(.title)
                                            .symbolRenderingMode(.palette)
                                            .foregroundStyle(index.colore2,index.colore1)
                                        
                                        Spacer()
                                        
                                        Text(String(index.cont))
                                            .font(.title)
                                            .bold()
                                    }
                                    Text(index.title)
                                    
                                    
                                    
                                })
                                
                            }
                            
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                }
                HStack{ Text("I miei elenchi")
                        .font(.title)
                        .bold()
                        .padding()
                    Spacer()
                }
               
               
                
            }
            

            
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Menu() {
                            Button(action: {}, label: {
                                Text("Modifica elenchi")
                                Spacer()
                                Image(systemName: "pencil")
                            })
                            Button(action: {}, label: {
                                Text("Modelli")
                                Spacer()
                                Image(systemName: "square.on.square")
                            })
                            
                            
                        }label: {
                            Image(systemName: "ellipsis.circle")
                        }
                    }
                 
                }
                .toolbar{
                    ToolbarItemGroup(placement: .bottomBar){
                        Button(action: {}, label: {
                            Image(systemName: "plus.circle.fill")
                            Text("Promemoria")
                        })
                        Button(action: {}, label: {
                            Text("Aggiungi Elenco")
                        })
                        
                    }
                }
            
           
        } .searchable(text: $searchText)
        
        
      
    }
}




#Preview {
    ContentView()
}
