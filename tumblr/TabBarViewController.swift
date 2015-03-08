//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Wanting Huang on 3/7/15.
//  Copyright (c) 2015 Wan-Ting Huang. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
    
    var isPresenting: Bool = true


    @IBOutlet weak var explorePopup: UIImageView!
    @IBOutlet var tabBarButtons: [UIButton]!
    
    @IBOutlet weak var contentView: UIView!
    var homeViewController: HomeViewController!
    var searchViewController: SearchViewController!
    var composeViewController: ComposeViewController!
    var accountViewController: AccountViewController!
    var trendingViewController: TrendingViewController!
    var currentViewController :UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeViewStoryboard") as HomeViewController
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchViewStoryboard") as SearchViewController
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("composeViewStoryboard") as ComposeViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountViewStoryboard") as AccountViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingViewStoryboard") as TrendingViewController
        
        // set hoe as default tab
        currentViewController = homeViewController
        didPressTapBarButton(tabBarButtons[0])
        
        // animate explorePopup
        UIView.animateWithDuration(0.8, delay: 0, options: UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
                self.explorePopup.frame.origin.y = 444
            }) { (Bool) -> Void in
                //
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressTapBarButton(sender: UIButton) {
        
        for element in tabBarButtons {
            element.selected = false
        }
        
        removeChildView(currentViewController)
        
        var x:Int!
        x = find(tabBarButtons, sender)
        
        switch x {
        case 0:
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.explorePopup.alpha = 1
            })
            addChildViewController(homeViewController)
            homeViewController.view.frame = contentView.frame
            contentView.addSubview(homeViewController.view)
            homeViewController.didMoveToParentViewController(self)
            currentViewController = homeViewController
            sender.selected = true
            
        case 1:
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.explorePopup.alpha = 0
            })
            addChildViewController(searchViewController)
            searchViewController.view.frame = contentView.frame
            contentView.addSubview(searchViewController.view)
            searchViewController.didMoveToParentViewController(self)
            currentViewController = searchViewController
            sender.selected = true
        case 2:
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.explorePopup.alpha = 1
            })
            addChildViewController(accountViewController)
            accountViewController.view.frame = contentView.frame
            contentView.addSubview(accountViewController.view)
            accountViewController.didMoveToParentViewController(self)
            currentViewController = accountViewController
            sender.selected = true
        case 3:
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.explorePopup.alpha = 1
            })
            addChildViewController(trendingViewController)
            trendingViewController.view.frame = contentView.frame
            contentView.addSubview(trendingViewController.view)
            trendingViewController.didMoveToParentViewController(self)
            currentViewController = trendingViewController
            sender.selected = true
            
        default:
            println("default")
        }
        
        
    }
    
    func removeChildView(content: UIViewController) {
        content.willMoveToParentViewController(nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var destinationVC = segue.destinationViewController as UIViewController
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationVC.transitioningDelegate = self
        
    }
    
    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = true
        return self
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = false
        return self
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        // The value here should be the duration of the animations scheduled in the animationTransition method
        return 0.4
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        //println("animating transition")
        var containerView = transitionContext.containerView()
        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        
        if (isPresenting) {
            containerView.addSubview(toViewController.view)
            toViewController.view.alpha = 0
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                toViewController.view.alpha = 1
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
            }
        } else {
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                fromViewController.view.alpha = 0
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
                    fromViewController.view.removeFromSuperview()
            }
        }
    }
    
    @IBAction func didPressComposeButton(sender: AnyObject) {
        performSegueWithIdentifier("composeSegue", sender: self)

    }
    
    override func viewDidAppear(animated: Bool) {
        // animate explorePopup
        UIView.animateWithDuration(0.8, delay: 0, options: UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.explorePopup.frame.origin.y = 444
            }) { (Bool) -> Void in
                //
        }

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
