//
//  ViewController.swift
//  goalpost-app
//
//  Created by Devodriq Roberts on 9/25/18.
//  Copyright © 2018 Devodriq Roberts. All rights reserved.
//

import UIKit
import CoreData

class GoalsVc: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
        tableView.isHidden = false
    }
    

    @IBAction func addGoalButtonPressed(_ sender: Any) {
    }
    


}

extension GoalsVc: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell", for: indexPath) as? GoalCell else {return UITableViewCell()}
        cell.configureCell(description: "Eat salad twice a week", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
    

    
}










