//
//  RegisterVC.swift
//  Matrimony
//
//  Created by MacOS on 09/08/22.
//

import UIKit

class RegisterVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var txtfPhoneNumber: UITextField!
    @IBOutlet weak var lblTermsPolicy: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
}

// MARK: - Class Functions
extension RegisterVC {
    func setupUI() {
        /// Set the agree to terms and privacy label.
        let lblAgreeTexts = "By continuing, you agree to our Terms of service and Privacy Policy."
        
        let linkTargetRangeTerms = NSMakeRange(32, 16) //Range of the "Terms of Use"
        let linkTargetRangePolicy = NSMakeRange(53, 14) //Range of the "Privacy Policy"
        
        let mutableAttributedString = NSMutableAttributedString.init(string: lblAgreeTexts)
        mutableAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white, range: linkTargetRangeTerms)
        mutableAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white, range: linkTargetRangePolicy)
        mutableAttributedString.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue], range: linkTargetRangeTerms)
        mutableAttributedString.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue], range: linkTargetRangePolicy)
        
        lblTermsPolicy.attributedText = mutableAttributedString
        
    }
}

// MARK: - Button Action Methods
extension RegisterVC {
    @IBAction func btnSignUpTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func btnLoginTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
