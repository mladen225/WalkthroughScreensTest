//
//  CustomCollectionsCell.swift
//  WalkthroughScreensTest
//
//  Created by codepool on 15. 6. 2021..
//

import UIKit

class CustomCollectionsCell: UICollectionViewCell {
    
    
    var imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
    var label = UILabel(frame: CGRect(x: 0, y: 220, width: 300, height: 50))
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(imageView)
        self.addSubview(label)
        
    }
    
    override func layoutSubviews() {
       super.layoutSubviews()
        
    }
    
    
}
