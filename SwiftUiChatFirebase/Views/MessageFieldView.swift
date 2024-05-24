//
//  MessageFieldView.swift
//  SwiftUiChatFirebase
//
//  Created by Ran Ra on 16/11/1445 AH.
//

import Foundation


struct MessageFieldView : View {
    
    var message : MessageModel
    var body: some View{
        
    }
}
    struct MessageFieldView_Previews: PreviewProvider {
        static var previews: some View {
            MessageFieldView())
        }
    }
    
    
    struct CustomTextView: View {
    
        var placeholder : Text
        @Binding var text : String
        var body: some View{
           
    }

        
    }


