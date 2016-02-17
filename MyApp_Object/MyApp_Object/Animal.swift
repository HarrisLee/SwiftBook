//
//  Animal.swift
//  MyApp_Object
//
//  Created by JianRongCao on 2/16/16.
//  Copyright © 2016 JianRongCao. All rights reserved.
//

import Foundation


class Animal {
    var name = "";
    var age = 0;
    var sex = "";
    
    init(name: String,age: Int,sex: String) {
        self.name = name;
        self.age = age;
        self.sex = sex;
        self.nameInfo = "111";
    }
    
    func describeInfo() {
        NSLog("name is %@", self.name);
    }
    
    var nameInfo :String {
//        get {
//            var msg = "Animal " + self.name;
//            msg = msg + " is Cat";
//            NSLog("get %@ \n msg is %@", self.name,msg);
//            return msg;
//        }
        
//        set (nameSet){
//            self.name = nameSet + " is his new Name";
//            NSLog("set %@", self.name);
//        }
        
        willSet {
            self.name = newValue + " willSet___";
            NSLog("willSet %@", self.name);
        }
    }
}
