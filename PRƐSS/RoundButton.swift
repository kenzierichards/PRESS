//
//  RoundButton.swift
//  PRƐSS
//
//  Created by Ettinger003 iMac1 on 10/30/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import UIKit

@IBDesignable class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           sharedInit()
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           sharedInit()
       }
       
       override func prepareForInterfaceBuilder() {
           sharedInit()
       }
       
       func sharedInit() {
           refreshCorners(value: cornerRadius)
       }
    
        func refreshCorners(value: CGFloat) {
            layer.cornerRadius = value
        }
    
    
}
