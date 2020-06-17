//
//  Animation.swift
//  HW9
//
//  Created by Кирилл Крамар on 17.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import UIKit

struct Animation {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    
    static func getAnimation() -> Animation? {
        guard let animation = DataManager.shared.animationPreset.randomElement() else { return nil }
        guard let curve = DataManager.shared.animationCurve.randomElement() else { return nil }
        let force = CGFloat.random(in: 0.5...2)
        let duration = CGFloat.random(in: 0.5...2)
        return Animation(animation: animation, curve: curve, force: force, duration: duration)
    }
}
