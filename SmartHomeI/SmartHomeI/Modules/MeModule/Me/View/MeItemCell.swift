//
//  MeItemCell.swift
//  SmartHomeI
//
//  Created by JianRongCao on 02/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import UIKit
import Kingfisher

class MeItemCell: UITableViewCell {
    var iconUrl : String?  {
        willSet {
            if (newValue?.hasPrefix("http"))! {
                let url = URL.init(string: newValue!)
                let cache = ImageCache(name : "default_90_90")
                iconView.kf.setImage(with: url, placeholder: UIImage.init(named: "default_90_90"), options: [.targetCache(cache)], progressBlock: { (receivedSize, totalSize) in
                    
                }, completionHandler: { (image, error, cacheType, url) in
                    
                });
            }
            else {
                iconView.image = UIImage.init(named: newValue!);
            }
        }
    };
    var title : String? {
        willSet {
            titleLabel.text = newValue;
        }
    };
    var isBottom : Bool? {
        didSet {
            if isBottom! {
                bottomLine.snp.updateConstraints({ (make) in
                    make.left.equalTo(self.snp.left);
                });
            }
            else {
                bottomLine.snp.updateConstraints({ (make) in
                    make.left.equalTo(self.snp.left).offset(48);
                });
            }
            self.setNeedsDisplay();
        }
    }
    var isTop : Bool? {
        didSet {
            topLine.isHidden = !isTop!;
        }
    }
    private var iconView : UIImageView!;
    private var titleLabel : UILabel!;
    private var bottomLine : UIView!;
    private var topLine : UIView!;
    private var arrorView : UIImageView!;
    private var rightLable : UILabel!;
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        self.setUpView();
        let sView = UIView.init();
        sView.backgroundColor = RBGWhite(white: 0.78);
        self.selectedBackgroundView = sView;
    }
    
    func setUpView() {
        iconView = UIImageView.init(frame: CGRect.zero);
        self.addSubview(iconView);
        iconView.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(15);
            make.width.height.equalTo(23);
            make.centerY.equalTo(self.snp.centerY);
        }
        
        titleLabel = UILabel.init();
        titleLabel.textColor = UIColor.black;
        titleLabel.font = RM_FONT_28PX;
        self.addSubview(titleLabel);
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(iconView.snp.right).offset(10);
            make.centerY.equalTo(self);
            make.right.equalTo(self).offset(-150);
        }
        
        bottomLine = UIView.init();
        bottomLine.backgroundColor = RBGWhite(white: 0.9);
        self.addSubview(bottomLine);
        bottomLine.snp.makeConstraints { (make) in
            make.left.bottom.right.equalTo(self);
            make.height.equalTo(0.5);
        }
        
        topLine = UIView.init(frame : CGRect.init(x: 0, y: 0, width: kSCREEN_WIDTH, height: 0.5));
        topLine.backgroundColor = RBGWhite(white: 0.9);
        self.addSubview(topLine);
        
        arrorView = UIImageView.init(image: UIImage.init(named: "icon_scene_rightarrow"));
        arrorView.sizeToFit();
        self.addSubview(arrorView);
        arrorView.snp.makeConstraints { (make) in
            make.centerY.equalTo(self);
            make.right.equalTo(self).offset(-15);
        }
        
        rightLable = UILabel.init();
        rightLable.textColor = RBGWhite(white: 0.6);
        rightLable.font = RM_FONT_26PX;
        rightLable.textAlignment = .right;
        self.addSubview(rightLable);
        rightLable.snp.makeConstraints { (make) in
            make.left.equalTo(titleLabel.snp.right).offset(10);
            make.centerY.equalTo(self);
            make.right.equalTo(self).offset(-15);
        }
    }
    
    func showRightInfo(info:String) {
        if info.lengthOfBytes(using: String.Encoding.utf8) > 0 {
            arrorView.isHidden = true;
            rightLable.isHidden = false;
            rightLable.text = info;
        }
        else {
            arrorView.isHidden = false;
            rightLable.text = "";
            rightLable.isHidden = true;
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
