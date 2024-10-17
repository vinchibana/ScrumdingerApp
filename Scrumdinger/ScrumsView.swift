//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 邱鑫 on 9/6/24.
//

import SwiftUI


struct ScrumsView: View {
    
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    @Environment(\.scenePhase) private var scenePhase
    let saveAction: () -> Void
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $isPresentingNewScrumView) {
                NewScrumSheet(isPresentingNewScrumView: $isPresentingNewScrumView, scrums: $scrums)
            }
            .onChange(of: scenePhase) { phase in
                if phase == .inactive {
                    saveAction()
                }
            }
        }
        
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData), saveAction: {})
    }
}
