//
//  SearchViewController.swift
//  tumblr
//
//  Created by Wanting Huang on 3/7/15.
//  Copyright (c) 2015 Wan-Ting Huang. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchScrollView: UIScrollView!
    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var loadingView: UIView!
    @IBOutlet weak var loadingImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchScrollView.contentSize = searchFeed.frame.size
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        loadingView.alpha = 1
        //println(loadingView.alpha)
        
        var images = UIImage.animatedImageNamed("loading-", duration: 0.7)
        loadingImage.image = images
        
        delay(1.0, { () -> () in
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.loadingView.alpha = 0
            })
            
        })
    }
    
    override func viewWillAppear(animated: Bool) {
        //
    }
    
    override func viewWillDisappear(animated: Bool) {
        //
    }
    
    override func viewDidDisappear(animated: Bool) {
        //
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
