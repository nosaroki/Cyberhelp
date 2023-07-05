//
//  EmptyChatView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 05/07/2023.
//

import SwiftUI

struct EmptyChatView: View {
    
    @EnvironmentObject var ChatVM: ChatViewModel
    @State var messageText = ""
    @State private var scrollPosition: Anchor<CGPoint>? = nil
    var conversation : Conversation
    
    var body: some View {
        ZStack {
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)
            VStack {
                Text("Patapo")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("DeepBlue"))
                    .padding(.top)
                ScrollView {
                    ScrollViewReader { scrollView in
                        
                        ForEach(conversation.conversation) { message in
                            if message.destinataire == true {
                                LazyVStack(alignment: .leading) {
                                    HStack {
                                        Text(message.chat)
                                            .fontWeight(.medium)
                                            .padding()
                                            .padding(.bottom, 16)
                                            .background(Color("OrangeClair"))
                                            .foregroundColor(Color("DeepBlue"))
                                            .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                                            .listRowSeparator(.hidden)
                                            .overlay(alignment: .bottomLeading) {
                                                Image(systemName: "arrowtriangle.down.fill")
                                                    .font(.title)
                                                    .rotationEffect(.degrees(45))
                                                    .offset(x: -8, y: 8)
                                                    .foregroundColor(Color("OrangeClair"))
                                            }
                                    }
                                    .padding(.horizontal)
                                    .padding(.bottom, 8)
                                    Text("\(message.heure, format: .dateTime.hour().minute())")
                                        .font(.footnote)
                                        .padding(.top, -38)
                                        .padding(.leading, 32)
                                        .foregroundColor(Color("DeepBlue"))
                                        .fontWeight(.medium)
                                        .frame(alignment: .trailing)
                                }
                                
                            } else {
                                LazyVStack(alignment: .trailing) {
                                    HStack {
                                        Spacer()
                                        Text(message.chat)
                                            .fontWeight(.medium)
                                            .padding()
                                            .padding(.bottom, 16)
                                            .background(Color("Secondaire"))
                                            .foregroundColor(Color("Neutre"))
                                            .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                                            .listRowSeparator(.hidden)
                                            .overlay(alignment: .bottomTrailing) {
                                                Image(systemName: "arrowtriangle.down.fill")
                                                    .font(.title)
                                                    .rotationEffect(.degrees(-45))
                                                    .offset(x: 8, y: 8)
                                                    .foregroundColor(Color("Secondaire"))
                                            }
                                    }
                                    .padding(.horizontal)
                                    .padding(.bottom, 8)
                                    Text("\(message.heure, format: .dateTime.hour().minute())")
                                        .font(.footnote)
                                        .padding(.top, -38)
                                        .padding(.trailing, 32)
                                        .foregroundColor(Color("Neutre"))
                                        .fontWeight(.medium)
                                }
                            }
                        }
                        
                        .onChange(of: conversation) { newValue in
                            withAnimation {
                                scrollView.scrollTo(conversation.conversation.last!.id,anchor: .bottom)
                            }
                        }
                    }
                }
                    HStack {
                        TextField("Ecrivez ici", text: $messageText)
                            .foregroundColor(.black)
                            .padding()
                            .background(Color("DeepBlue").opacity(0.1))
                            .cornerRadius(10)
                            .onSubmit {
                                ChatVM.sendMessage(conversation: conversation, message: messageText)
                                
                                messageText = ""
                            }
                        Button {
                            ChatVM.sendMessage(conversation: conversation, message: messageText)
                            messageText = ""
                            
                        } label: {
                            Image("send")
                                .resizable()
                                .frame(width: 38, height: 38)
                                .rotationEffect(.degrees(45))
                        }
                        .font(.system(size:26))
                        .padding(.horizontal,10)
                        
                    }
                    .padding()
                }
            }
        }
    }
struct EmptyChatView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyChatView(conversation:Conversation(user: profilP, conversation: [], isRead: false))
    }
}
