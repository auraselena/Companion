//
//  VideoCallView.swift
//  Companion
//
//  Created by Selena Aura on 15/04/25.
//

import SwiftUI

struct VideoCallView: View {
    @State var isMicOn: Bool = true
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("IMG_0671")
                    .resizable()
                    .frame(width: 660, height: 900)
                    .scaledToFill()
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
                            SessionEndingView()
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
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    VideoCallView()
}
