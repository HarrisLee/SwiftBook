//
//  GlobalMarcro.swift
//  SmartHomeI
//
//  Created by JianRongCao on 02/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import Foundation
import UIKit
import ReachabilitySwift

/*********颜色***********/
//RGB转换

func RBGAWhite(white:Float,alpha:Float) -> UIColor
{
    return UIColor.init(colorLiteralRed: white, green: white, blue: white, alpha: alpha);
}

func RBGWhite(white:Float) -> UIColor
{
    return RBGAWhite(white: white,alpha: 1.0);
}

func RGB(r:CGFloat,g:CGFloat,b:CGFloat) ->UIColor
{
    return RGBA(r: r, g: g, b: b, a: 1.0);
}

func RGBA(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat) ->UIColor
{
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a);
}

//主题色
public let THEME_COLOR = UIColor(red: 33/255.0, green: 41/255.0, blue: 54/255.0, alpha: 1.0)
//背景色
public let BG_COLOR = UIColor(red: 246/255.0, green: 246/255.0, blue: 246/255.0, alpha: 1.0)
//分割线颜色
public let LINE_COLOR = UIColor(red: 217/255.0, green: 217/255.0, blue: 217/255.0, alpha: 1.0)

public let ME_COLOR = RGB(r: 242, g: 242, b: 242);
/*********尺寸***********/

//设备屏幕尺寸
public let kSCREEN_WIDTH  =  UIScreen.main.bounds.size.width;
public let kSCREEN_HEIGHT =  UIScreen.main.bounds.size.height;

//获取视图尺寸
public func VIEW_WIDTH(view:UIView)->CGFloat
{
    return view.frame.size.width
}
public func VIEW_HEIGHT(view:UIView)->CGFloat
{
    return view.frame.size.height
}
