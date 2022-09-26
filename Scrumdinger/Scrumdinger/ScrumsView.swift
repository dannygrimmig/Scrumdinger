//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Danny Grimmig on 9/26/22.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List{
            ForEach(scrums) {scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
                
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
