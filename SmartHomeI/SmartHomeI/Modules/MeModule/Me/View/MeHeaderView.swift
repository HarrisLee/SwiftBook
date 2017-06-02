//
//  MeHeaderView.swift
//  SmartHomeI
//
//  Created by JianRongCao on 02/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import UIKit

class MeHeaderView: UIView {
    var line : UIView!
    var backgroundImage:UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.backgroundColor = ME_COLOR;
        
        backgroundImage = UIImageView.init(image: #imageLiteral(resourceName: "me_icon_bgview.png"));
        backgroundImage.contentMode = .scaleAspectFill;
        backgroundImage.clipsToBounds = true;
        self.addSubview(backgroundImage);
        
        backgroundImage.snp.makeConstraints { (make) in
            make.left.right.equalTo(self);
            make.bottom.equalTo(self).offset(-20);
        };
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
