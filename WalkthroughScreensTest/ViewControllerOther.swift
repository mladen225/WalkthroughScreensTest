//
//  ViewControllerOther.swift
//  WalkthroughScreensTest
//
//  Created by codepool on 10. 6. 2021..
//

import UIKit

class ViewControllerOther: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func backClick(_ sender: Any) {
        
        //directionOfPresent = ""
        viewToPresent = "ViewControllerThree"
        dismiss(animated: false, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }

}
