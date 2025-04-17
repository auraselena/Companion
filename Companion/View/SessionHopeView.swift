//
//  SessionHopeView.swift
//  Companion
//
//  Created by Selena Aura on 15/04/25.
//

import SwiftUI

struct SessionHopeView: View {
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
                    SetHopeView().padding(.top, 200)
                    InputHopeView().padding(.top, 50)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct SetHopeView: View {
    var body: some View{
        VStack (alignment: .leading) {
            Text("Please share")
                .titleStyle()
            HStack {
                Text("your")
                    .titleStyle()
                Text("hope")
                    .titleStyle()
                    .italic()
            }
            Text("for this session.")
                .titleStyle()
        }
        
        
    }
}

struct InputHopeView: View {
    @State var userHope: String = ""
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
                "After this session ended, I want to feel...",
                text: $userHope
            )
            .multilineTextAlignment(.center)
            .padding(.top, -130)
            NavigateToPreferenceView().padding(.top, 290)
        }
    }
}

struct NavigateToPreferenceView: View {
    
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
                    PreferenceView()
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
    SessionHopeView()
}
