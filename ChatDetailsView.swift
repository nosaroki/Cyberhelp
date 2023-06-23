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
    
    var body: some View {
        ZStack{
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)
            VStack {
//                List(ChatVM.messages) { conversation in
                    //                    Text(conversation)
                    //                        .padding()
                    //                        .background(Color("Primaire"))
                    //                        .foregroundColor(Color("Neutre"))
                    //                        .clipShape(RoundedRectangle(cornerRadius: 16.0,style: .continuous))
                    //                        .listRowSeparator(.hidden)
                    ////                        .overlay(alignment:.bottomLeading)
                    //                    Image(systemName: "arrowtriangle.down.fill")
                    //                        .font(.title)
                    //                        .rotationEffet(.degrees(45))
                    //                        .offset(x: -10, y: 10)
                    //                        .foregroundColor(Color("Primaire"))
                    //                }
                    //                .listStyle(.plain)
                }
                .padding()
            }
        }
    }
    
    
    struct ChatDetailsView_Previews: PreviewProvider {
        static var previews: some View {
            ChatDetailsView()
        }
    }
    

