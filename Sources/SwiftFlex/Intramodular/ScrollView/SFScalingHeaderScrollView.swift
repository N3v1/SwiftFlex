//
//  SFScalingHeaderScrollView.swift
//  SwiftFlex
//
//  Created by Nevio Hirani on 03.02.24.
//

import Swift
import SwiftUI

public enum SFSnapHeaderState: Equatable {
    case expanded
    case collapsed
    case custom(CGFloat)
}

public enum SFSnapHeaderMode: Int {
    /// Disable header snap.
    case disabled

    /// Enable header snap.
    /// Once you lift your finger header snaps either to min or max height automatically.
    case immediately

    /// Enable header snap. Smoother scroll mode.
    /// At the end of scroll view deceleration the header snaps either to min or max height automatically.
    case afterFinishAccelerating
}
