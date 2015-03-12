//
//  TweetViewController.swift
//  The Podium
//
//  Created by Sean Craig on 2/20/15.
//  Copyright (c) 2015 Sean Craig. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {
    
    
    @IBOutlet var tweetAuthorAvatar: UIImageView!
    @IBOutlet var tweetAuthorsName: UILabel!
    @IBOutlet var tweetText: UITextView!
    
    
    @IBAction func dismissView(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var selectedTweet : NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userData = selectedTweet?.objectForKey("user") as NSDictionary
        
        tweetText.text? = selectedTweet?.objectForKey("text") as NSString
        tweetAuthorsName.text? = userData.objectForKey("name") as String
        
        let imageURLString = userData.objectForKey("profile_image_url") as String
        let imageURL = NSURL(string: imageURLString) as NSURL!
        let imageData = NSData(contentsOfURL: imageURL!) as NSData!
        
        dispatch_async(dispatch_get_main_queue()) {
            self.tweetAuthorAvatar.image = UIImage(data: imageData!)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
