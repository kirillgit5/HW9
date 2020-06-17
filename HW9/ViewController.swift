//
//  ViewController.swift
//  HW9
//
//  Created by Кирилл Крамар on 16.06.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    //MARK : - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var startAnimationButton: UIButton!
    
    //MARK : - Private Property
    private var currentAnimation = DataFetcher.shared.getAnimationConfigure()
    
    //MARK : - Life Cycles View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimationButton.setTitle(currentAnimation.animationPreset, for: .normal)
        setValueLabes()
    }
    
    //MARK : - IB Action
    @IBAction func startAnimation() {
        startAnimationButton.isEnabled = false
        animationView.animation = currentAnimation.animationPreset
        animationView.curve = currentAnimation.animationCurve
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        animationView.animateNext { [weak self] in
            guard let self = self else { return }
            self.currentAnimation = DataFetcher.shared.getAnimationConfigure()
            self.setValueLabes()
            self.startAnimationButton.setTitle(self.currentAnimation.animationPreset, for: .normal)
            self.startAnimationButton.isEnabled = true
            
        }
    }
    
    //MARK : - Private Methods
    private func setValueLabes() {
        nameLabel.text = currentAnimation.animationPreset
        curveLabel.text = currentAnimation.animationCurve
        forceLabel.text = string(value: currentAnimation.force)
        durationLabel.text = string(value: currentAnimation.duration)
    }
    
    private func string(value: CGFloat) -> String {
        String(format: "%.2f", value)
    }
}



