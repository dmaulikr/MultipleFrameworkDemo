//
//  FeatureAValue.swift
//  FramworkDemoApp
//
//  Created by Desai on 05/05/25.
//

import CoreA
import CoreB

public enum FeatureAValue {
    public static let demo = "FeatureAValue"
    
    public static let mixed: String = {
        "Mix: \(CoreAValue.demo) + \(CoreBValue.demo) → FeatureA"
    }()
}
