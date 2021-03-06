//
//  InfoViewController.swift
//  PhotoViewer
//
//  Created by Johan on 7/1/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var currentPhoto:Photo?

    @IBOutlet var detailsLabel : UILabel
    @IBAction func back(sender : AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = currentPhoto?.notes
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
