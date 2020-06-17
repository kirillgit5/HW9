//
//  DataFetcher.swift
//  HW9
//
//  Created by Кирилл Крамар on 16.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import Foundation
import Spring
class DataFetcher {
    static let shared = DataFetcher()
    private var animationPreset = [Spring.AnimationPreset.Wobble.rawValue ,
                                   Spring.AnimationPreset.FadeInDown.rawValue ,
                                   Spring.AnimationPreset.FadeInLeft.rawValue,
                                   Spring.AnimationPreset.FadeIn.rawValue ,
                                   Spring.AnimationPreset.FadeInUp.rawValue ,
                                   Spring.AnimationPreset.Fall.rawValue ,
                                   Spring.AnimationPreset.FadeOutIn.rawValue ,
                                   Spring.AnimationPreset.Flash.rawValue ,
                                   Spring.AnimationPreset.FlipX.rawValue ,
                                   Spring.AnimationPreset.FlipY.rawValue ,
                                   Spring.AnimationPreset.Morph.rawValue ]
    
    private var animationCurve = [Spring.AnimationCurve.EaseIn.rawValue ,
                                  Spring.AnimationCurve.EaseInBack.rawValue ,
                                  Spring.AnimationCurve.EaseInQuad.rawValue ,
                                  Spring.AnimationCurve.EaseInCirc.rawValue ,
                                  Spring.AnimationCurve.EaseInExpo.rawValue ,
                                  Spring.AnimationCurve.EaseInSine.rawValue ]
    
    private init() {}
    
    func getAnimationConfigure() -> (animationPreset: String ,animationCurve: String ,force: CGFloat, duration: CGFloat) {
        let preset = animationPreset.shuffled().first!
        let curve  = animationCurve.shuffled().first!
        let force = CGFloat.random(in: 0.5...2)
        let duration = CGFloat.random(in: 0.5...2)
        return (preset,curve,force,duration)
    }
    
    
}
