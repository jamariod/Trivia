//
//  Extensions.swift
//  Trivia
//
//  Created by Jamario Davis on 2/4/23.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
