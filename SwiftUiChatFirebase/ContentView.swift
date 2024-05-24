//
//  ContentView.swift
//  SwiftUiChatFirebase
//
//  Created by Ran Ra on 15/11/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["hello," ,  "How Are You" , "I've Been doing some tthing"]
    
    
    var body: some View {
        VStack {
            TitleRowView()
            ScrollView{
                ForEach(messageArray, id : \.self ){
                    text in MessageBubuleView(message: MessageModel(id: "666", text: text, recived: false, timestemp: Date()))
                }
            }.padding(.top, 10)
                .background()
                .cornerRadius(30, corners: [.topRight, .topLeft])
                
        } .background(Color("peach"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
 
    static var previews: some View {
        ContentView()
       
    }
}
