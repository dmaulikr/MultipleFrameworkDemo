//
//  FeatureDValue.swift
//  FramworkDemoApp
//
//  Created by Desai on 05/05/25.
//

import CoreA

public enum FeatureDValue {
    public static let demo = "FeatureDValue"
    
    public static let mixed: String = {
        "Mix: \(CoreAValue.demo) → FeatureD"
    }()
}
