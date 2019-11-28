//
//  RotatedBadgeSymbol.swift
//  SwiftUI Practice
//
//  Created by Gerardo Carlos Roderico Tan on 2019/11/28.
//  Copyright © 2019 nytfury47. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
