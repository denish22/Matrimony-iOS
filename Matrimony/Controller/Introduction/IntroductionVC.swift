//
//  IntroductionVC.swift
//  Matrimony
//
//  Created by MacOS on 08/08/22.
//

import UIKit
import JXPageControl

class IntroductionVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var collectionPageContainer: UICollectionView!
    @IBOutlet weak var viewPageController: UIView!
    
    // MARK: - Variables
    
    var arrIntroImageNames = ["img_introduction_one", "img_introduction_two", "img_introduction_three"]
    
    /// Setup page controller tints
    lazy var codePageControl: JXPageControlEllipse = {
        let pageControl = JXPageControlEllipse()
        pageControl.frame = self.viewPageController.bounds
        pageControl.numberOfPages = self.arrIntroImageNames.count
        pageControl.activeColor = UIColor(rgb: 0xFF648A)
        pageControl.inactiveColor = UIColor(rgb: 0xFFFFFF)
        pageControl.isAnimation  = true
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPageCollectionView()
    }

}

// MARK: - Class Functions
extension IntroductionVC {
    func setUPageCollectionView() {
        self.collectionPageContainer.register(UINib(nibName: "IntroductionPageControllerCVCell", bundle: nil), forCellWithReuseIdentifier: "IntroductionPageControllerCVCell")
        self.collectionPageContainer.backgroundColor = .clear
        
        self.viewPageController.addSubview(self.codePageControl)
        self.collectionPageContainer.reloadData()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.bounds.width
        let progressInPage = scrollView.contentOffset.x - (page * scrollView.bounds.width)
        let progress = CGFloat(page) + progressInPage
        self.codePageControl.progress = progress
    }
}

// MARK: - Collection view Delegate and Datasource Methods
extension IntroductionVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrIntroImageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IntroductionPageControllerCVCell", for: indexPath) as! IntroductionPageControllerCVCell
        cell.imgIntroductionStep.image = UIImage(named: self.arrIntroImageNames[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: screenWidth(), height: self.collectionPageContainer.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}
