//
//  ViewControllerRoot.swift
//  WalkthroughScreensTest
//
//  Created by codepool on 10. 6. 2021..
//

import UIKit

var viewToPresent = ""
var directionOfPresent = ""

class ViewControllerRoot: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if (viewToPresent != "") {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let viewController = storyBoard.instantiateViewController(withIdentifier: viewToPresent)
            //present(viewController, animated: false, completion:nil)
            
            if directionOfPresent == "" {
                present(viewController, animated: false, completion:nil)
            } else if directionOfPresent == "Right" {
                transitionVc(vc: viewController, duration: 0.2, type: .fromRight)
            } else if directionOfPresent == "Left" {
                transitionVc(vc: viewController, duration: 0.5, type: .fromLeft)
            }
            
            directionOfPresent = ""
            
        } else if (self.children.count == 0) {
            //UserDefaults.standard.setValue(true, forKey: "mainFlowInitialized")
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let viewController = storyBoard.instantiateViewController(withIdentifier: "ViewControllerOne") as! ViewControllerOne
            present(viewController, animated:false, completion:nil)
        }
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }

}

extension UIViewController {
    func transitionVc(vc: UIViewController, duration: CFTimeInterval, type: CATransitionSubtype) {
        let customVcTransition = vc
        let transition = CATransition()
        transition.duration = duration
        transition.type = CATransitionType.push
        transition.subtype = type
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(customVcTransition, animated: false, completion: nil)
    }
    
}

