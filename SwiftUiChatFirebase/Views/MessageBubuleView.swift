//
//  MessageBubuleComponent.swift
//  SwiftUiChatFirebase
//
//  Created by Ran Ra on 15/11/1445 AH.
//

import Foundation
import SwiftUI


struct MessageBubuleView : View {
    //    var isItReceved : Alignment = message.recived ? .leading : .trailing
    //ضغط الزر
    @State private var showTime = false
    var message : MessageModel
    var body: some View{
        VStack(alignment: message.recived ? .leading : .trailing ){
            HStack(){
                Text(message.text)
                    .padding()
                    .background(message.recived ?Color("peach") : Color("gray"))
                    .cornerRadius(30)
                
            }
            
            .frame(maxWidth: .infinity, alignment: message.recived ? .leading : .trailing)
            .onTapGesture {
                //ضغط الزر
                showTime.toggle()
            }
            if showTime {
                Text("\(message.timestemp.formatted(.dateTime.hour().minute()))")
                    .padding(message.recived ? .leading : .trailing)
            }
            
        }
        .frame(maxWidth: .infinity, alignment: message.recived ? .leading : .trailing)
        .padding(message.recived ? .leading : .trailing)
        .padding(.horizontal , 17)
        
    }
    
}

    struct MessageBubuleView_Previews: PreviewProvider {
        static var previews: some View {
            MessageBubuleView(message: MessageModel(id: "12", text: "restarted my project. Waited a minute. and the preview showed in my eyes.", recived: true, timestemp: Date()))
        }
    }

