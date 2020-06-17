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
    private var currentAnimation = Animation.getAnimation()
    
    //MARK : - Life Cycles View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let currentAnimation = currentAnimation else { return }
        startAnimationButton.setTitle(currentAnimation.animation, for: .normal)
        setValueLabes()
    }
    
    //MARK : - IB Action
    @IBAction func startAnimation() {
        guard let animation = currentAnimation else { return }
        startAnimationButton.isEnabled = false
        animationView.animation = animation.animation
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.animateNext { [weak self] in
            guard let self = self else { return }
            self.currentAnimation = Animation.getAnimation()
            guard let currentAnimation = self.currentAnimation else { return }
            self.setValueLabes()
            self.startAnimationButton.setTitle(currentAnimation.animation , for: .normal)
            self.startAnimationButton.isEnabled = true
            
        }
    }
    
    //MARK : - Private Methods
    private func setValueLabes() {
        guard let currentAnimation = currentAnimation else { return }
        nameLabel.text = currentAnimation.animation
        curveLabel.text = currentAnimation.curve
        forceLabel.text = string(value: currentAnimation.force)
        durationLabel.text = string(value: currentAnimation.duration)
    }
    
    private func string(value: CGFloat) -> String {
        String(format: "%.2f", value)
    }
}



