//
//  ScoreManager.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import Foundation
class ScoreManager {
    private let scoreKey = "com.SustainableSteppers.score"
    //function to save score gained from take action now page
    func saveScore(_ score: Int) {
        UserDefaults.standard.set(score, forKey: scoreKey)
    }
    //function to display score gained from take action now page
    func loadScore() -> Int {
        return UserDefaults.standard.integer(forKey: scoreKey)
    }
}
