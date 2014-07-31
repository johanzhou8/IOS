//
//  ViewController.swift
//  TestProject
//
//  Created by Johan on 7/3/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var plistPath:String = NSBundle.mainBundle().pathForResource("plistdemo", ofType: "plist")
        var data:NSMutableDictionary = NSMutableDictionary(contentsOfFile: plistPath)
        NSLog("%@", data)
        
        data.setObject("add some content", forKey: "c_key")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!){
     var svc = segue.destinationViewController as ShowingViewController
        svc.info = "baichi"
    }

}

