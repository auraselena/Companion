//
//  TimerTest.swift
//  Companion
//
//  Created by Selena Aura on 17/04/25.
//

import Foundation
import SwiftUI

struct StopwatchView: View {
    @State private var timeElapsed: Int = 0
    @State private var timer: Timer?

    var body: some View {
        Text(formatTime(seconds: timeElapsed))
            .font(.system(size: 24, weight: .semibold, design: .default))
            .foregroundColor(.white)
        .onAppear {
            startTimer()
        }
        .onDisappear {
            stopTimer()
        }
    }

    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            timeElapsed += 1
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    func formatTime(seconds: Int) -> String {
        let hours = seconds / 3600
        let minutes = (seconds % 3600) / 60
        let secs = seconds % 60
        return String(format: "%02d:%02d:%02d", hours, minutes, secs)
    }
}

#Preview {
    StopwatchView()
}
