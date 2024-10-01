//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by 邱鑫 on 9/24/24.
//

import SwiftUI

struct ThemeView: View {
    
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding(5)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}


#Preview {
    ThemeView(theme: .buttercup)
}
