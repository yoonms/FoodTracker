//
//  Meal.swift
//  FoodTracker
//
//  Created by jeongminho on 17/07/2019.
//  Copyright © 2019 jeongminho. All rights reserved.
//

import UIKit

class Meal{
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int){
        //Initiaqlization should fail if there is not name or if the rating is negative.
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating>=0) && (rating<=5)
            else{
                return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
