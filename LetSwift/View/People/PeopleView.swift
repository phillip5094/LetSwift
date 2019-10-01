//
//  PeopleView.swift
//  LetSwift
//
//  Created by BumMo Koo on 27/07/2019.
//  Copyright © 2019 Cleanios. All rights reserved.
//

import SwiftUI

struct PeopleView: View {
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Rectangle()
                        .fill(Color(UIColor.secondarySystemBackground))
                        .frame(height: 240)
                        .modifier(RoundedMask())
                        .padding(.horizontal)
                    VStack(alignment: .leading, spacing: 24) {
                        PeopleList(title: "Speakers")
                        PeopleList(title: "Sponsors")
                        PeopleList(title: "Organizers")
                        PeopleList(title: "Staffs")
                    }
                    .frame(alignment: .leading)
                }
                Spacer()
            }
            .navigationBarTitle("People")
        }
    }
}

// MARK: - Preview
struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PeopleView()
            PeopleView()
                .environment(\.colorScheme, .dark)
            PeopleView()
                .environment(\.sizeCategory, .extraExtraExtraLarge)
        }
    }
}
