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
    @IBOutlet weak var existingFavFileButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Need to check for global var here to change image
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if (kIsFavorite) {
            favsImageView.image = UIImage(named:"existing_favorites")
            existingFavFileButton.enabled = true
        } else {
            favsImageView.image = UIImage(named:"empty_favorites")
            existingFavFileButton.enabled = false
        }
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
