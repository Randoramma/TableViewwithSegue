//
//  PersonDetailViewController.swift
//  TableViewDemo
//
//  Created by Randy McLain on 2/26/15.
//  Copyright (c) 2015 Randy McLain. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {

       var selectedPerson = Person(firstName: "Foo", lastName: "SurFoo")
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
       override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = self.selectedPerson.getFirstName()

    }
    
    // as the input data changes with each load, lets put the id in the updated view each load.  
    override func viewWillAppear(animated: Bool) {
        
        firstNameLabel.text = self.selectedPerson.getFirstName()
        
        lastNameLabel.text = self.selectedPerson.getLastName()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
