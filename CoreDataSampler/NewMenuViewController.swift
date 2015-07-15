    //
//  NewMenuViewController.swift
//  CoreDataSampler
//
//  Created by Aprentice on 15/07/15.
//  Copyright © 2015 Aprentice. All rights reserved.
//

import UIKit
    
let coreDataStack = CoreDataStack()

class NewMenuViewController: UIViewController {

    @IBOutlet weak var menuTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func disMiss(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func donePressed(sender: AnyObject) {
        /* save menu item*/
        if let mText = menuTextField.text {
            coreDataStack.insertNewMenu(mText)
        }
        
        disMiss()
    }
   
    @IBAction func cancelPressed(sender: AnyObject) {
        
        disMiss()
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
