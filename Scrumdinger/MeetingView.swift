//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 邱鑫 on 9/1/24.
//

import SwiftData
import SwiftUI

struct MeetingView: View {

    @Binding var scrum: DailyScrum
    @StateObject var scrumTimer = ScrumTimer()

    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.theme.mainColor)
            VStack {

                MeetingHeaderView(
                    secondsElapsed: scrumTimer.secondsElapsed,
                    secondsRemaining: scrumTimer.secondsRemaining,
                    theme: scrum.theme)
                Circle().strokeBorder(lineWidth: 24).padding(19)
                HStack {
                    Text("Speaker 1 of 3")
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                }
            }
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .navigationBarTitleDisplayMode(.inline)

    }

}

#Preview {
    MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
}
