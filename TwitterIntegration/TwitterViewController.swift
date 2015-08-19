//
//  TwitterViewController.swift
//  TwitterIntegration
//
//  Created by Lawrence F MacFadyen on 2015-07-24.
//  Copyright (c) 2015 LawrenceM. All rights reserved.
//

import UIKit
import Social
import Accounts

class TwitterViewController: UIViewController {

    let image = UIImage(named: "RandomImage.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func clickedSLCVC(sender: AnyObject) {
        tweetSLCVC()
    }

    
    func tweetSLCVC()
    {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            let twitterController:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            twitterController.setInitialText("Posting a tweet from iOS App" + "\r\n" + "\r\n" + "#Cool")
            twitterController.addImage(image)
            self.presentViewController(twitterController, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Twitter Account", message: "Please login to your Twitter account.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
 

   
}
