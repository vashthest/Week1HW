//
//  CreateAccountTableViewController.swift
//  Week1HW
//
//  Created by Yi on 8/5/14.
//  Copyright (c) 2014 Dropbox. All rights reserved.
//

import UIKit

class CreateAccountTableViewController: UITableViewController {

    @IBOutlet weak var createButton: UIBarButtonItem!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordImageView: UIImageView!
    
    var emailTest = NSPredicate(format: "SELF MATCHES %@", argumentArray: ["[A-Z0-9a-z\\._%+]+@([A-Za-z0-9]+\\.)+[A-Za-z]{2,4}"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        emailTextField.text = ""
        passwordTextField.text = ""
        createButton.enabled = false
        passwordImageView.hidden = true
        passwordImageView.frame.origin.y = 210

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        if (passwordTextField.text == "") {
            passwordImageView.hidden = true
        } else {
            passwordImageView.frame.origin.y = 210
        }
    }
    
    @IBAction func onEditPasswordBegin(sender: AnyObject) {
        passwordImageView.hidden = false
        setPasswordImage()
    }
    
    func setPasswordImage() {
        passwordImageView.frame.origin.y = 210
        var str = passwordTextField.text + ""
        
        if (str == "") {
            passwordImageView.image = UIImage(named:"0")
        } else if (countElements(str) > 9) {
            passwordImageView.image = UIImage(named:"4")
        } else if (countElements(str) > 6) {
            passwordImageView.image = UIImage(named:"3")
        } else if (countElements(str) > 3) {
            passwordImageView.image = UIImage(named:"2")
        } else {
            passwordImageView.image = UIImage(named:"1")
        }
    }
    
    @IBAction func onEditChanged(sender: AnyObject) {
        // TODO: add in password strength meter
        var emailText = emailTextField.text
        
        var emailIsValid = emailTest.evaluateWithObject(emailText)
        
        if (firstNameTextField.text != "" && lastNameTextField.text != "" && emailIsValid && passwordTextField.text != "") {
            createButton.enabled = true
        } else {
            createButton.enabled = false
        }
        
        if (emailIsValid) {
            emailTextField.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        }
        
        setPasswordImage()
    }
    
    @IBAction func onEmailDoneEditing(sender: AnyObject) {
        var emailText = emailTextField.text
        var emailIsValid = emailTest.evaluateWithObject(emailText)
        
        if (!emailIsValid && emailText != "") {
            emailTextField.textColor = UIColor(red: 0.8, green: 0, blue: 0, alpha: 1.0)
        } else {
            emailTextField.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        }
    }
    
    // MARK: - Table view data source
    
    /*
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }
    */
    
    /*
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }
    */

    /*
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
