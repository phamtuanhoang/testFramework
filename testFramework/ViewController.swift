//
//  ViewController.swift
//  testFramework
//
//  Created by tuanhoang pham on 12/10/15.
//  Copyright © 2015 tuanhoang pham. All rights reserved.
//

import UIKit
import imglyKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openCamera(sender: UIButton)
    {
        let cameraViewController = IMGLYCameraViewController(recordingModes: [.Photo, .Video])
        cameraViewController.maximumVideoLength = 15
        cameraViewController.squareMode = true
        self.presentViewController(cameraViewController, animated: true) { () -> Void in
            print("Loaded")
        }
    }

}

