//
//  PreferenceView.swift
//  Companion
//
//  Created by Selena Aura on 14/04/25.
//

import SwiftUI

struct PreferenceView: View {
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
                    PreferenceTitleView().padding(.top, 10)
                    PreferenceButtonView().padding(.top, 50)
                }
                BackButtonView().padding(.top, 500).padding(.trailing, 270)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct PreferenceTitleView: View {
    var body: some View{
        VStack (alignment: .leading) {
            Text("Choose session")
                .titleStyle()
                Text("preference")
                    .titleStyle()
                    .italic()
                Text("that you like.")
                    .titleStyle()
        }
    }
}

struct PreferenceButtonView: View {
    var body: some View {
        VStack {
            NavigationLink{
                VoiceCallView()
            } label : {
                Text("Voice call")
                .buttonTextPrimary()
                .frame(width: 344, height: 61)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                )
            }
            .buttonStyle(PlainButtonStyle())
            
            NavigationLink{
                VideoCallView()
            } label : {
                Text("Video call")
                .buttonTextPrimary()
                .frame(width: 344, height: 61)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                )
                .padding(15)
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct BackButtonView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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
        .padding(.top, 200)
    }
}

#Preview {
    PreferenceView()
}
