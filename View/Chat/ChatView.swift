//
//  ChatView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var chatVM: ChatViewModel
//    @EnvironmentObject var profileVM : ListesDesProfiles    
    var body: some View {
        NavigationStack{
            ZStack {
                Color("Neutre")
                    .edgesIgnoringSafeArea(.top)
                VStack {
                    Text("Chat")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .padding(.top)
                    ScrollView {
                        ForEach (chatVM.conversations){ conversation in
                            NavigationLink {
                                ChatDetailsView(conversation: conversation)
                            } label: {
                                
                                ZStack{
                                    Rectangle()
                                        .fill(.white)
                                        .frame(width: 360, height: 100)
                                        .cornerRadius(8)
                                    HStack{
                                        Image("bellFilled")
                                            .foregroundColor(Color("Orange"))
                                        VStack (alignment: (.leading)){
                                            Text("Dr \(conversation.user.nom)")
                                                .fontWeight(.bold)
                                                .lineLimit(1)
                                            if let lastMessage = conversation.conversation.last {
                                                Text(lastMessage.chat)
                                                    .lineLimit(1)
                                                    .fontWeight(conversation.isRead ? .regular : .bold)
                                                    .padding(.vertical, -4)
                                                Text("\(lastMessage.heure, format: .dateTime.hour().minute())")
                                                    .font(.footnote)
                                                    .fontWeight(.thin)
                                                    .foregroundColor(Color("DeepBlue"))
                                                
                                            }
                                        }
                                        Spacer()
                                            Image(systemName:conversation.isRead ? "" : "1.circle.fill")

                                    }
                                    .padding()
                                }
                            }
                        }
                    }
                    .padding()
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

