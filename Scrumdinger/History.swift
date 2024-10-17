//
//  History.swift
//  Scrumdinger
//
//  Created by 邱鑫 on 10/12/24.
//

import Foundation

struct History: Identifiable, Codable{
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]

    init(
        id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee]
    ) {
        self.id = id
        self.date = date
        self.attendees = attendees
    }
}
