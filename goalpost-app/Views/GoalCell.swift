//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Devodriq Roberts on 9/25/18.
//  Copyright © 2018 Devodriq Roberts. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalCountLabel: UILabel!
    @IBOutlet weak var goalTextLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) {
        self.goalTextLabel.text = description
        self.goalTypeLabel.text = type.rawValue
        self.goalCountLabel.text = String(goalProgressAmount)
    }
    
}
