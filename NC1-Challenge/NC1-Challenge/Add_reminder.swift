//
//  Add_reminder.swift
//  NC1-Challenge
//
//  Created by Domenico Mennillo on 22/11/23.
//

import Foundation
import SwiftUI
import SwiftData


struct Add_reminder : View {
    @Query var Reminders : [Reminder]
    @Environment(\.dismiss) private var dismiss
    @State private var titolo : String = ""
    @State private var descr: String = ""
    var body: some View {
        
        NavigationView{
            List{
                
                TextField(text: $titolo) {
                    Text("Titolo")
                    
                }
               TextEditor(text: $descr)
                    
              
                    
                
                .textFieldStyle(.roundedBorder)
                Section{
                    NavigationLink(destination: Home(num:0)){
                        Text("Details")
                           
                    }
                    .font(.subheadline)
                    .bold(false)
                }
                Section{
                    NavigationLink(destination: Home(num:0)){
                        HStack{
                            Image(systemName: "list.bullet.circle.fill")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white,.orange)
                            Text("Lists")
                                
                            Spacer()
                            Text("Reminders")
                               
                                .opacity(0.5)
                        }
                        .bold(false)
                        .font(.subheadline)
                    }
                    
                }
            }
            
            .toolbar{
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading){
                    Button(action:{
                        dismiss()
                    } , label: {
                        Text("Cancel")
                            .bold()
                    })
                    
                }
                 
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                        Button(action:{},label: {
                            Text("Add")
                                .bold()
                        })}
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("New Reminders")
                
              
                
            }
        }
    }
       
    

#Preview {
    Add_reminder()
}
