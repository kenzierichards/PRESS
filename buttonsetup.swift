//
//  buttonsetup.swift
//  PRƐSS
//
//  Created by Ettinger003 iMac2 on 10/29/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import Foundation
import UIKit
class buttonsetup: UIButton{
    override init(frame: CGRect){
        super.init(frame:frame)
        buttonframing()
    }
    required init?(coder aDecoder: NSCoder)
    {
        super.init (coder: aDecoder)
        buttonframing()
    }
    
    private func buttonframing() {
        backgroundColor = .white
        layer.cornerRadius = frame.size.height/2
    }
    
}
