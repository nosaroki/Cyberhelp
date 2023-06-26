//
//  ChatView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI
import StreamChat

struct ChatView: View {
    @EnvironmentObject var ChatVM: ChatViewModel
    var body: some View {
        ZStack {
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)
            VStack {
                Text("Chat")
                    .font(.title)
                    .fontWeight(.bold)
                ScrollView{
                    List (ChatVM.conversations){ message in
                        HStack{
//                            Image("bellFilled")
//                            Text(conversation.userP.nom)
//                            if let lastMessage = conversation.conversation.last {
//                                Text(lastMessage.chat)
//                            }
//                            Text(conversation.user.nom)
//                            if let lastMessage = conversation.conversation.last {
//                                Text(lastMessage.date)
//                            }
                        }
                    }
                }
                }
            }
        }
    }
    
    
    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView().environmentObject(ChatViewModel())
        }
    }

