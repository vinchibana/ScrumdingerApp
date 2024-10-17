//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 邱鑫 on 9/1/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {

    @StateObject var store = ScrumStore()

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {

                }
            }
            .task {
                do {
                    try await store.load()
                } catch {
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
}
