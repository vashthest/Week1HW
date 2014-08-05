//
//  FileViewController.swift
//  Week1HW
//
//  Created by Yi on 8/4/14.
//  Copyright (c) 2014 Dropbox. All rights reserved.
//

import UIKit

class FileViewController: UIViewController {

    @IBOutlet weak var favoriteActionImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Need to make this hit a global var so the other tabs can read it
        // Note that we should also reset this when the user logs out
        tabBarController.tabBar.hidden = true
        favoriteActionImageView.hidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        tabBarController.tabBar.hidden = false
    }
    
    @IBAction func toggleFavoriteButton(sender: AnyObject) {
        favoriteActionImageView.hidden = !favoriteActionImageView.hidden
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
