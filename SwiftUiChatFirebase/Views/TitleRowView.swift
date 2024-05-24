//
//  TittleRow.swift
//  SwiftUiChatFirebase
//
//  Created by Ran Ra on 15/11/1445 AH.
//

import Foundation
import SwiftUI

struct TitleRowView : View  {
    
    var imageUrl = URL(string: "https://smartcdn.gprod.postmedia.digital/canoe/wp-content/uploads/2018/04/blacklab1000.jpg")
    var name : String = "sara"
    
    
    var body: some View {
        HStack( spacing: 20 ){
            //Add Photo From Internet
            AsyncImage(url: imageUrl){
                Image in Image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50 , height: 50)
                    .cornerRadius(50)
             } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading){
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
                    
            }.frame(maxWidth: .infinity , alignment: .leading)
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
               
        }
        .padding()
    }
}


struct TitleRowView_Previews: PreviewProvider {
    static var previews: some View {
        TitleRowView()
    }
}

