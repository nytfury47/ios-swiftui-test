//
//  ProfileHost.swift
//  SwiftUI Practice
//
//  Created by Gerardo Carlos Roderico Tan on 2019/11/29.
//  Copyright © 2019 nytfury47. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var mode
    @EnvironmentObject var userData: UserData
    @State var draftProfile = Profile.default
    
    var body: some View {
        //Text("Profile for: \(draftProfile.username)")
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if self.mode?.wrappedValue == .active {
                    Button("Cancel") {
                        print("tan: edit canceled")
                        self.draftProfile = self.userData.profile
                        self.mode?.animation().wrappedValue = .inactive
                    }
                }
                
                Spacer()
                
                EditButton()
            }
            if self.mode?.wrappedValue == .inactive {
                ProfileSummary(profile: userData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        print("tan: edit onAppear")
                        self.draftProfile = self.userData.profile
                    }
                    .onDisappear {
                        print("tan: edit onDisappear")
                        // should save only when user clicks Done button
                        // will also save when manually closing the modal edit view (slide down)
                        self.userData.profile = self.draftProfile
                    }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
