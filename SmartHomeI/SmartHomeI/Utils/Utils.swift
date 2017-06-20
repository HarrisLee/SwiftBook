//
//  Utils.swift
//  SmartHomeI
//
//  Created by JianRongCao on 12/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import Foundation

class Utils : NSObject {
    class func sayHello(msg:String)-> Void {
        print("小明：\(msg)");
    }
    
    class func greeting(person: String) -> String {
        let greet = "Hello " + person + "!";
        return greet;
    }
}
