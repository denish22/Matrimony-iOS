//
//  LoginVC.swift
//  Matrimony
//
//  Created by MacOS on 09/08/22.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var txtfPhoneNumber: UITextField!
    @IBOutlet weak var btnRadioRemember: UIButton!
    @IBOutlet weak var lblTermsPolicy: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}

// MARK: - Class Functions
extension LoginVC {
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
extension LoginVC {
    @IBAction func btnRadioRememberTapped(_ sender: UIButton) {
        if sender.isSelected {
            self.btnRadioRemember.isSelected = false
        } else {
            self.btnRadioRemember.isSelected = true
        }
    }
    
    @IBAction func btnSignInTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func btnRegisterTapped(_ sender: UIButton) {
        let vc = loadVC(strStoryboardId: "Authentication", strVCId: "RegisterVC") as! RegisterVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnFacebookTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func btnGoogleTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func btnAppleTapped(_ sender: UIButton) {
        
    }
}
