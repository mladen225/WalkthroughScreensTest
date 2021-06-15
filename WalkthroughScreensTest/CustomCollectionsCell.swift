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
    
    
//    var course : Course! {
//        didSet {
//            self.updateUI ()
//        }
//    }
//
//
//    func updateUI() {
//
//        if let course = course {
//            imageView.image = course.imageCourse
//            label.text = course.title
//            //details.text = course.details
//            //colorView.backgroundColor = course.color
//        } else {
//            imageView.image = nil
//            label.text = nil
//            //details.text = nil
//            //colorView.backgroundColor = nil
//        }
//
//        imageView.layer.cornerRadius = 10.0
//        imageView.layer.masksToBounds = true
//
//        //buttonRegister.layer.cornerRadius = 10
//    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
//        let label = UILabel(frame: CGRect(x: 0, y: 220, width: 300, height: 50))
        
        self.addSubview(imageView)
        self.addSubview(label)
        
    }
    
    override func layoutSubviews() {
       super.layoutSubviews()
        
    }
    
    
}

//class Course {
//    
//    var title = ""
//    var imageCourse : UIImage
//    var details = ""
//    
//    
//    init(title:String , imageCourse :UIImage , details : String  ) {
//        self.title = title
//        self.imageCourse = imageCourse
//        self.details = details
//        
//    }
//    
//    static func FetchCourse () -> [Course]{
//        
//        return [ Course(title: "The Art of Sketching ", imageCourse: UIImage(named: "Image_1" )!, details: "Use your sketchbook to find your own drawing style and share it with others ") ,
//            Course(title: " Watercolor Techniques", imageCourse: UIImage(named: "Image_2" )!, details: "Paint with watercolors in a technical and creative way") ,
//            Course(title: "llustration Techniques ", imageCourse: UIImage(named: "Image_3" )!, details: "Create an artist’s portfolio and develop your own universe of pictorial resources ")
//        
//        ]
//        
//    }
//}
