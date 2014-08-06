//
//  SignInRootViewController.swift
//  Week1HW
//
//  Created by Yi on 8/4/14.
//  Copyright (c) 2014 Dropbox. All rights reserved.
//

import UIKit

class SignInRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if (!kSignedOut) {
            performSegueWithIdentifier("SignInSegue", sender: nil)
            kSignedOut = false
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationController.navigationBarHidden = true
        kIsFavorite = false
    }
    
    override func viewWillDisappear(animated: Bool) {
        navigationController.navigationBarHidden = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
