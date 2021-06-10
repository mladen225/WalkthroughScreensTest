//
//  ViewControllerTwo.swift
//  WalkthroughScreensTest
//
//  Created by codepool on 10. 6. 2021..
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var pageController: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageController.currentPage = 1
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.handleGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.handleGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }

    @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
       if gesture.direction == .right {
        
        directionOfPresent = "Left"
        viewToPresent = "ViewControllerOne"
        dismiss(animated: false, completion: nil)
            
       }
       else if gesture.direction == .left {
        
        directionOfPresent = "Right"
        viewToPresent = "ViewControllerThree"
        dismiss(animated: false, completion: nil)
            
       }
        
    }
}
