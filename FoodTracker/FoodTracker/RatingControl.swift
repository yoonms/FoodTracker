//
//  RatingControl.swift
//  FoodTrackerTests
//
//  Created by jeongminho on 15/07/2019.
//  Copyright © 2019 jeongminho. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    
    // MARKL: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Private Methods
    
    private func setupButtons(){
        
        for _ in 0..<5{
        
        //Create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Setup the button action
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        // Add the button to the stack
        addArrangedSubview(button)
        }
    }
    //MARK: Button Action
    
    @objc func ratingButtonTapped(button: UIButton){
        print("Button pressed")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
        
}
