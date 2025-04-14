//
//  HopeIntention.swift
//  Companion
//
//  Created by Selena Aura on 11/04/25.
//

import SwiftUI

struct HopeIntention: View {
    var body: some View {
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
                }
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

#Preview {
    HopeIntention()
}
