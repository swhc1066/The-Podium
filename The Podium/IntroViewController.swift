//
//  IntroViewController.swift
//  The Podium
//
//  Created by Sean Craig on 2/23/15.
//  Copyright (c) 2015 Sean Craig. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UITabBarDelegate {

    @IBOutlet var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        // 1
        var nav = self.navigationController?.navigationBar
        // 2
        nav?.barStyle = UIBarStyle.Default
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 374, height: 88))
        imageView.contentMode = .ScaleAspectFit
        // 4
        let image = UIImage(named: "nav-background-image")
        imageView.image = image
        // 5
        navigationItem.titleView = imageView
    }
    
    //Hide the status bar
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
