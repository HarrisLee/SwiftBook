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
    var horLine : UIView!
    var verLine : UIView!
    var iconView : UIImageView!;
    var nameLabel : UILabel!;
    var seceneButton : UIButton!;
    var msgButton : UIButton!;
    var unreadView : UIView!;
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.backgroundColor = ME_COLOR;
        
        self.setUpView();
    }
    
    func setUpView() {
        backgroundImage = UIImageView.init(image: #imageLiteral(resourceName: "me_icon_bgview.png"));
        backgroundImage.contentMode = .scaleAspectFill;
        backgroundImage.clipsToBounds = true;
        self.addSubview(backgroundImage);
        
        backgroundImage.snp.makeConstraints { (make) in
            make.left.right.equalTo(self);
            make.bottom.equalTo(self).offset(-20);
        };
        
        horLine = UIView.init();
        horLine.backgroundColor = RBGAWhite(white: 1.0, alpha: 0.5);
        self.addSubview(horLine);
        horLine.snp.makeConstraints { (make) in
            make.height.equalTo(0.5);
            make.left.width.equalTo(self);
            make.bottom.equalTo(self).offset(-65);
        };
        
        verLine = UIView.init();
        verLine.backgroundColor = RBGAWhite(white: 1.0, alpha: 0.5);
        self.addSubview(verLine);
        verLine.snp.makeConstraints { (make) in
            make.centerX.equalTo(self);
            make.width.equalTo(0.5);
            make.top.equalTo(horLine.snp.bottom);
            make.bottom.equalTo(self).offset(-20);
        };
        
        seceneButton = UIButton.init(type: .custom);
        seceneButton.setTitle("智能场景", for: .normal);
        seceneButton.setImage(UIImage.init(named: "me_icon_secene"), for: .normal);
        seceneButton.titleLabel?.font = RM_FONT_28PX;
        seceneButton.setTitleColor(UIColor.white, for: .normal);
        seceneButton.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 10, bottom: 0, right: 0);
        self.addSubview(seceneButton);
        seceneButton.snp.makeConstraints { (make) in
            make.left.bottom.equalTo(backgroundImage);
            make.width.equalTo(kSCREEN_WIDTH/2.0);
            make.height.equalTo(45);
        };
        
        msgButton = UIButton.init(type: .custom);
        msgButton.setTitle("消息中心", for: .normal);
        msgButton.setImage(UIImage.init(named: "me_icon_mycenter"), for: .normal);
        msgButton.titleLabel?.font = RM_FONT_28PX;
        msgButton.setTitleColor(UIColor.white, for: .normal);
        msgButton.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 10, bottom: 0, right: 0);
        self.addSubview(msgButton);
        msgButton.snp.makeConstraints { (make) in
            make.left.equalTo(seceneButton.snp.right).offset(0.5);
            make.top.width.height.equalTo(seceneButton);
        };
        
        unreadView = UIView.init();
        unreadView.layer.cornerRadius = 2.5;
        unreadView.backgroundColor = UIColor.red;
        self.addSubview(unreadView);
        unreadView.snp.makeConstraints { (make) in
            make.height.width.equalTo(5);
            make.left.equalTo(msgButton.snp.centerX).offset(40);
            make.top.equalTo(self.snp.bottom).offset(-55);
        }
        
        nameLabel = UILabel.init();
        nameLabel.textColor = UIColor.white;
        nameLabel.font = RM_FONT_26PX;
        nameLabel.textAlignment = .center;
        nameLabel.text = "欢迎登录，乐享自在生活";
        self.addSubview(nameLabel);
        nameLabel.snp.makeConstraints { (make) in
            make.left.centerX.equalTo(self);
            make.bottom.equalTo(horLine.snp.top).offset(-20);
        }
        
        iconView = UIImageView.init(image: UIImage.init(named: "me_icon_unlogin"));
        iconView.layer.cornerRadius = 40;
        iconView.clipsToBounds = true;
        iconView.isUserInteractionEnabled = true;
        self.addSubview(iconView);
        iconView.snp.makeConstraints { (make) in
            make.width.height.equalTo(80);
            make.bottom.equalTo(nameLabel.snp.top).offset(-10);
            make.centerX.equalTo(self);
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
