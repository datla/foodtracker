//
//  RatingControl.swift
//  FoodTracker
//
//  Created by M3 on 19/08/2017.
//  Copyright © 2017 M3. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    // MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Button Action
    
    func ratingButtonTapped(button: UIButton){
        print("Button tapped 👍")
    }
    
    // MARK: Private methods
    private func setupButtons(){
        for _ in 0..<5{
            // create button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            //Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            //Add the button to te stack
            addArrangedSubview(button)
            
            // Add the new button to the ratting button array
            ratingButtons.append(button)
        }
        
    }
}
