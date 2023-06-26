//
//  ChatDetailsView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI
import StreamChat

struct ChatDetailsView: View {
    
    @EnvironmentObject var ChatVM: ChatViewModel
    @ State var messageText = ""
    
    var body: some View {
        ZStack{
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)
            VStack {
            ScrollView{
                Text("Chat")
                    .font(.title)
                    .fontWeight(.bold)
                //                List(ChatVM.messages) { conversation in
            }
            HStack{
                TextField("Ecrivez ici", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
//                            sendMessage
                    }
                Button {
//                        sendMessage
                } label: {
                    Image("send")
                }
                .font(.system(size:26))
                .padding(.horizontal,10)
            }
            .padding()
                }
                .padding()
            }
        }
    }
    
    
    struct ChatDetailsView_Previews: PreviewProvider {
        static var previews: some View {
            ChatDetailsView().environmentObject(ChatViewModel())
        }
    }
    

