//
//  FavTabViewController.swift
//  Week1HW
//
//  Created by Yi on 8/4/14.
//  Copyright (c) 2014 Dropbox. All rights reserved.
//

import UIKit

class FavTabViewController: UIViewController {

    @IBOutlet weak var favsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Need to check for global var here to change image
        favsImageView.image = UIImage(named:"existing_favorites")
        favsImageView.image = UIImage(named:"empty_favorites")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
