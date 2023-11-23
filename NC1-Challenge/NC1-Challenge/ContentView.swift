//
//  ContentView.swift
//  NC1-Challenge
//
//  Created by Domenico Mennillo on 15/11/23.
//

import SwiftUI
import SwiftData



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
    @Query private var Reminders: [Reminder]
    @State var modal = false
    
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
                HStack{ Text("My lists")
                        .font(.title)
                        .bold()
                        .padding()
                    Spacer()
                }
                
            
                VStack {
                    Section{
                        
                        NavigationLink(destination: Home(num:0)){
                            
                            Text("Reminder")
                                .padding([.leading])
                                Spacer()
                            
                        }.buttonStyle(PlainButtonStyle())
                        
                    }
                }
            
                
            }
            

            
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Menu() {
                            Button(action: {
                                
                            }, label: {
                                Text("Edit lists")
                                Spacer()
                                Image(systemName: "pencil")
                            })
                            Button(action: {}, label: {
                                Text("Models")
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
                        Button(action: {
                            
                            modal.toggle()
                            
                        }, label: {
                           
                                Image(systemName: "plus.circle.fill")
                                Text("Reminder")
                                    .bold()
                            
                        }).sheet(isPresented: $modal, content: {
                            Add_reminder()
                        })
                        Button(action: {}, label: {
                            Text("Add Lists")
                        })
                        
                    }
                }
            
           
        } .searchable(text: $searchText)
        
        
      
    }
}




#Preview {
    ContentView()
}
