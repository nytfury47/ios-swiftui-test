//
//  UserData.swift
//  SwiftUI Practice
//
//  Created by Gerardo Carlos Roderico Tan on 2019/11/28.
//  Copyright © 2019 nytfury47. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
