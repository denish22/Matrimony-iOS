//
//  UtilityFunctions.swift
//  Matrimony
//
//  Created by MacOS on 08/08/22.
//

import Foundation
import UIKit

/// Get screen width
public func screenWidth() -> CGFloat {
    let screenSize = UIScreen.main.bounds
    return screenSize.width
}

/// Get screen height
public func screenHeight() -> CGFloat {
    let screenSize = UIScreen.main.bounds
    return screenSize.height
}

/// Load or Navigate view controller
public func loadVC(strStoryboardId: String, strVCId: String) -> UIViewController {
    let vc = getStoryboard(storyboardName: strStoryboardId).instantiateViewController(withIdentifier: strVCId)
    return vc
}

/// Get storyboard
public func getStoryboard(storyboardName: String) -> UIStoryboard {
    return UIStoryboard(name: storyboardName, bundle: nil)
}
