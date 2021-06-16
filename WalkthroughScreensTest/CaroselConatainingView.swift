//
//  CaroselConatainingView.swift
//  WalkthroughScreensTest
//
//  Created by codepool on 15. 6. 2021..
//

import UIKit

let imageArray = ["Image_1", "Image_2", "Image_3"]

//var courses = Course.FetchCourse()

class CaroselConatainingView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var pageControler: UIPageControl!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var returnButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func backClick(_ sender: Any) {
        
        viewToPresent = "ViewControllerOther"
        dismiss(animated: false, completion: nil)
    }
    
    
    @IBAction func nextClick(_ sender: Any) {
        
        if currentPage < 2 {
            collectionView.scrollToItem(at: IndexPath(row: currentPage + 1, section: 0), at: .right, animated: true)
        }
        
    }
    
    @IBAction func returnClick(_ sender: Any) {
        
        if currentPage > 0 {
            collectionView.scrollToItem(at: IndexPath(row: currentPage - 1, section: 0), at: .left, animated: true)
        }
        
    }
    
    var currentPage = 0 {
        didSet {
            pageControler.currentPage = currentPage
        }
    }
    
    func getCurrentPage() -> Int {
            
        let visibleRect = CGRect(origin: collectionView.contentOffset, size: collectionView.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        if let visibleIndexPath = collectionView.indexPathForItem(at: visiblePoint) {
            return visibleIndexPath.row
        }
        
        return currentPage
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.isPagingEnabled = true
        
        collectionView.isScrollEnabled = false

        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageArray.count //courses.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCollectionCell", for: indexPath as IndexPath) as! CustomCollectionsCell
        
        
//        let course = courses[indexPath.item]
//        cell.course = course
        
        
        cell.imageView.image = UIImage(named: imageArray[indexPath.row])

        cell.label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit \(indexPath.row + 1)"
        cell.label.font = UIFont.systemFont(ofSize: 14)
        cell.label.textColor = .black
        cell.label.numberOfLines = 4
        
        //pageControler.currentPage = indexPath.row
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 300, height: 300)
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        print("SELECTED \(indexPath.row)")
//
//    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}

extension CaroselConatainingView: UICollectionViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        currentPage = getCurrentPage()
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        currentPage = getCurrentPage()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        currentPage = getCurrentPage()
    }
}



