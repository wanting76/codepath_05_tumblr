//
//  ComposeViewController.swift
//  tumblr
//
//  Created by Wanting Huang on 3/7/15.
//  Copyright (c) 2015 Wan-Ting Huang. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var nevermindButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoButton.frame.origin.y = 568
        chatButton.frame.origin.y = 568
        quoteButton.frame.origin.y = 568
        textButton.frame.origin.y = 568
        linkButton.frame.origin.y = 568
        videoButton.frame.origin.y = 568
        
//        UIView.animateWithDuration(0.2, delay: 0.3, options: .CurveEaseInOut, animations: {
//            self.photoButton.frame.origin.y = 105
//            println("animate")
//            UIView.animateWithDuration(0.1, delay: 0.2, options: .CurveEaseInOut, animations: {
//                self.chatButton.frame.origin.y = 220
//                UIView.animateWithDuration(0.1, delay: 0.2, options: .CurveEaseInOut, animations: {
//                    self.quoteButton.frame.origin.y = 105
//                    UIView.animateWithDuration(0.1, delay: 0.2, options: .CurveEaseInOut, animations: {
//                        self.textButton.frame.origin.y = 105
//                        UIView.animateWithDuration(0.1, delay: 0.2, options: .CurveEaseInOut, animations: {
//                            self.linkButton.frame.origin.y = 220
//                            UIView.animateWithDuration(0.1, delay: 0.2, options: .CurveEaseInOut, animations: {
//                                self.videoButton.frame.origin.y = 220
//                            },completion: { finished in
//                                //
//                            })
//                        },completion: { finished in
//                            //
//                        })
//                    },completion: { finished in
//                        //
//                    })
//                },completion: { finished in
//                    //
//                })
//            },completion: { finished in
//                //
//            })
//            
//        },completion: { finished in
//            //
//        })
        
        
        delay(0.3, { () -> () in
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.photoButton.frame.origin.y = 105
                delay(0.1, { () -> () in
                    UIView.animateWithDuration(0.2, animations: { () -> Void in
                        self.chatButton.frame.origin.y = 220
                        delay(0.1, { () -> () in
                            UIView.animateWithDuration(0.2, animations: { () -> Void in
                                self.quoteButton.frame.origin.y = 105
                                delay(0.1, { () -> () in
                                    UIView.animateWithDuration(0.2, animations: { () -> Void in
                                        self.textButton.frame.origin.y = 105
                                        delay(0.1, { () -> () in
                                            UIView.animateWithDuration(0.2, animations: { () -> Void in
                                                self.linkButton.frame.origin.y = 220
                                                delay(0.1, { () -> () in
                                                    UIView.animateWithDuration(0.2, animations: { () -> Void in
                                                        self.videoButton.frame.origin.y = 220
                                                    })
                                                })
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
                
                
            })
        })//end of delay
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressNevermindButton(sender: UIButton) {
        
        sender.backgroundColor = UIColor(red: 51/255, green: 69/255, blue: 86/255, alpha: 1)
        
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.photoButton.frame.origin.y = -75
            delay(0.1, { () -> () in
                UIView.animateWithDuration(0.2, animations: { () -> Void in
                    self.chatButton.frame.origin.y = -75
                    delay(0.1, { () -> () in
                        UIView.animateWithDuration(0.2, animations: { () -> Void in
                            self.quoteButton.frame.origin.y = -75
                            delay(0.1, { () -> () in
                                UIView.animateWithDuration(0.2, animations: { () -> Void in
                                    self.textButton.frame.origin.y = -75
                                    delay(0.1, { () -> () in
                                        UIView.animateWithDuration(0.2, animations: { () -> Void in
                                            self.linkButton.frame.origin.y = -75
                                            delay(0.1, { () -> () in
                                                UIView.animateWithDuration(0.2, animations: { () -> Void in
                                                    self.videoButton.frame.origin.y = -75
                                                })
                                            })
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })//end of animate
        
        delay(0.5, { () -> () in
            UIView.animateWithDuration(0.3, animations: { () -> Void in

                self.nevermindButton.frame.origin.y = 568
                
            })
        })

        
        delay(0.5, { () -> () in
            self.dismissViewControllerAnimated(true, completion: nil)
        })
        
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
