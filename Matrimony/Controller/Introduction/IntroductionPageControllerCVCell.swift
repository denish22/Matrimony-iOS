//
//  IntroductionPageControllerCVCell.swift
//  Matrimony
//
//  Created by MacOS on 08/08/22.
//

import UIKit

class IntroductionPageControllerCVCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var viewImageBackground: UIView!
    @IBOutlet weak var imgIntroductionStep: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        /*
        /// Add rounded corners
        let maskLayer = CAShapeLayer()
        maskLayer.frame = viewImageBackground.bounds
        maskLayer.path = UIBezierPath(roundedRect: viewImageBackground.bounds,
                                      byRoundingCorners: [UIRectCorner(rawValue: (UIRectCorner.bottomLeft.rawValue | UIRectCorner.bottomRight.rawValue))],
                                      cornerRadii: CGSize(width: 10.0, height: 10.0)).cgPath
        viewImageBackground.layer.mask = maskLayer
        */
    }

}
