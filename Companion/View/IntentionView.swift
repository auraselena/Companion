//
//  HopeIntention.swift
//  Companion
//
//  Created by Selena Aura on 11/04/25.
//

import SwiftUI

struct IntentionView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("BackgroundImage")
                    .overlay(alignment: .leading) {
                        Rectangle()
                            .frame(width: 600, height: 905)
                            .opacity(0.79)
                            .foregroundColor(Color(hex: "#18132B36"))
                                    
                    }
                VStack {
                    SetIntentionView().padding(.top, 200)
                    InputIntentionView().padding(.top, 115)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct SetIntentionView: View {
    var body: some View{
        VStack (alignment: .leading) {
            Text("Let's set")
                .titleStyle()
            HStack{
                Text("your")
                    .titleStyle()
                Text("intention.")
                    .titleStyle()
                    .italic()
            }
        }
        
        
    }
}

struct InputIntentionView: View {
    @State var userIntention: String = ""
    var body: some View{
        ZStack {
            Rectangle()
                .frame(width: 402, height: 409)
                .foregroundColor(Color(hex: "#eaeaea"))
                .cornerRadius(37.5)
            Rectangle()
                .frame(width: 357, height: 225)
                .foregroundColor(Color(hex: "#ffffff"))
                .cornerRadius(30)
                .padding(.top, -100)
            TextField(
                "In this session, I want to work on...",
                text: $userIntention
            )
            .multilineTextAlignment(.center)
            .padding(.top, -130)
            NavigateToHopeView().padding(.top, 290)
        }
    }
}

struct NavigateToHopeView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
                HStack {
                Button{
                    // action: redirect to the next page
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .buttonTextPrimary()
                        .frame(width: 59, height: 59)
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color.white)
                        )
                }
                
                NavigationLink {
                    // action: redirect to the next page
                    SessionHopeView()
                } label: {
                    Text("Next")
                        .buttonTextSecondary()
                        .frame(width: 275, height: 59)
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color(hex: "#072d44"))
                        )
                }
            }
        }
    }
}

#Preview {
    IntentionView()
}
