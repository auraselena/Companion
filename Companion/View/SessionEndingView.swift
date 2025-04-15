//
//  SessionEndingView.swift
//  Companion
//
//  Created by Selena Aura on 14/04/25.
//

import SwiftUI

struct SessionEndingView: View {
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
                    EndingTitleView().padding(.top, 10)
                    EndingOptionView().padding(.top, 50)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct EndingTitleView: View {
    var body: some View{
        VStack (alignment: .leading) {
            Text("Congratulations!")
                .titleStyle()
                .italic()
                Text("One focus session\nhas ended.")
                    .titleStyle()
        }
    }
}

struct EndingOptionView: View {
    var body: some View {
            NavigationLink{
                MainView()
            } label : {
                Text("Start another session")
                .buttonTextPrimary()
                .frame(width: 344, height: 61)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(Color.white)
                )
                .padding(15)
            }
            .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    SessionEndingView()
}
