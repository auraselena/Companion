//
//  LandingPage.swift
//  Companion
//
//  Created by Selena Aura on 11/04/25.
//

import SwiftUI

struct MainView: View {
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
                    TextView().padding(.top, 200)
                    ButtonView().padding(.top, 217)
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct TextView: View {
    var body: some View{
        VStack (alignment: .leading) {
            Text("Accountability")
                .titleStyle()
            HStack{
                Text("made")
                    .titleStyle()
                Text("easy.")
                    .titleStyle()
                    .italic()
            }
            HStack{
                Text("Find")
                    .titleStyle()
                Text("companion,")
                    .titleStyle()
                    .italic()
            }
            Text("work better.")
                .titleStyle()
            Text("Stay on track,")
                .titleStyle()
                .italic()
            Text("together.")
                .titleStyle()
        }
        
        
    }
}

struct ButtonView: View {
    var body: some View {
        NavigationLink{
            IntentionView()
        } label : {
            Text("Start")
            .buttonTextPrimary()
            .frame(width: 344, height: 61)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    MainView()
}
