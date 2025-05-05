//
//  FeatureBValue.swift
//  FramworkDemoApp
//
//  Created by Desai on 05/05/25.
//

import CoreA
import CoreB

public enum FeatureBValue {
    public static let demo = "FeatureBValue"
    
    public static let mixed: String = {
        "Mix: \(CoreAValue.demo) + \(CoreBValue.demo) → FeatureB"
    }()
}
