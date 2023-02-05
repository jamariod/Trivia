//
//  Answer.swift
//  Trivia
//
//  Created by Jamario Davis on 2/4/23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
