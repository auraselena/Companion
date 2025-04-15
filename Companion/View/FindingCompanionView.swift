//
//  FindingCompanionView.swift
//  Companion
//
//  Created by Selena Aura on 14/04/25.
//

import SwiftUI

struct FindingCompanionView: View {
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
                    Image(systemName: "progress.indicator")
                        .tint(Color(hex:"#ffffff"))
                    Text("Finding your companion...")
                        .foregroundColor(Color(hex: "ffffff"))
                }
            }
        }
    }
}

#Preview {
    FindingCompanionView()
}
