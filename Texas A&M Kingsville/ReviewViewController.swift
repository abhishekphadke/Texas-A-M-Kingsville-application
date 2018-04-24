//
//  ReviewViewController.swift
//  Texas A&M Kingsville
//
//  Created by Abhishek Phadke on 4/15/18.
//  Copyright © 2018 SimplySolutions. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
         sideMenus()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideMenus() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
          
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    
   
}
}
