//
//  VoiceCallView.swift
//  Companion
//
//  Created by Selena Aura on 14/04/25.
//

import SwiftUI

struct VoiceCallView: View {
    @State var isMicOn: Bool = true
    
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
                HStack {
                    VStack {
                        Text("Focus-time spent")
                            .font(.system(size: 11, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                        // Timer
                        StopwatchView()
                    }
                    .frame(width: 120)
                    HStack {
                        Button{
                            isMicOn.toggle()
                        } label: {
                            Image(systemName: isMicOn ? "microphone.fill" : "microphone.slash.fill")
                                .buttonOnOff(isMicOn)
                                .frame(width: 59, height: 59)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(isMicOn ? Color.white : Color.red)
                                )
                        }
                        
                        NavigationLink{
                            MainView()
                        } label : {
                            Text("End call")
                                .foregroundColor(Color(hex:"#c30000"))
                                .frame(width: 124, height: 59)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.white)
                                )
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.leading, 60)
                }
                .padding(.bottom, 700)
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    VoiceCallView()
}
