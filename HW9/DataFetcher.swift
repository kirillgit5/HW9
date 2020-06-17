//
//  DataFetcher.swift
//  HW9
//
//  Created by Кирилл Крамар on 16.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//


import Spring
class DataManager {
    static let shared = DataManager()
        var animationPreset = [Spring.AnimationPreset.Wobble.rawValue ,
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
    
        var animationCurve = [Spring.AnimationCurve.EaseIn.rawValue ,
                                  Spring.AnimationCurve.EaseInBack.rawValue ,
                                  Spring.AnimationCurve.EaseInQuad.rawValue ,
                                  Spring.AnimationCurve.EaseInCirc.rawValue ,
                                  Spring.AnimationCurve.EaseInExpo.rawValue ,
                                  Spring.AnimationCurve.EaseInSine.rawValue ]
    
    private init() {}
    
   
    
}
