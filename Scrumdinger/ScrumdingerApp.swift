//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 邱鑫 on 9/1/24.
//

import SwiftUI


@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
