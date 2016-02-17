//
//  ViewController.swift
//  MyApp_Object
//
//  Created by JianRongCao on 1/29/16.
//  Copyright © 2016 JianRongCao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        var shapeObject : Shape! = Shape.init(name: "Jesy");
//        shapeObject.numberOfSides = 3;
//        NSLog("%@--%@", shapeObject.name, shapeObject.simpleDescribe());
//        NSLog("%@", shapeObject.showMsgWithName("go bed to home"));
//        shapeObject = nil;
//        
//        
//        let squar = Square.init(name: "Herry");
//        squar.simpleDescribe();
//        NSLog("\(squar.simpleDescribe())");
//        NSLog("\(squar.logo)");
//        squar.logo = "log";
//        NSLog("\(squar.logo)");
        
        
        //当处理可选值的时候，你可以在操作之前（比如方法、属性和下标）添加`?`。如果`?`之前的值是`nil`。`?`后的所有东西将被忽略，整个表达式的值为`nil`。否则，可选值是未包装的，所有`?`后面的操作都会运用在未包装的值上。在两种情况中，整个表达式的值是一个可选值。
        let cat : Animal? = Animal(name:"11",age:1,sex:"hh");// Animal.init(name: "cat", age: 3, sex: "male");
        cat?.name = "Kitty";
        cat!.describeInfo();
        cat!.nameInfo = "CatOns";
        NSLog("he is %@", cat!.nameInfo);
        
        let rect = CGRectMake(60, 20, 100, 100);
        let vi = UIView(frame: rect);
        vi.backgroundColor = UIColor.redColor();
        self.view.addSubview(vi);
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event);
        NSLog("hello");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class Shape {
    var numberOfSides = 0;
    var name = "";
    let className = "Shape";
    
    init(name:String){
        self.name = name;
    }
    
    func showMsgWithName(msg:String)->String{
        return "\(className) say \(msg) to you.";
    }
    
    func simpleDescribe()->String{
        return "A shape with \(numberOfSides) sides.";
    }
    
    deinit{
        NSLog("deinit");
    }
}

class Square: Shape {
    var ploice = "show";
    var showLogo : String  = "";
    
    override init(name nameLow: String) {
        super.init(name: nameLow);
        self.name = name;
        self.ploice = "good \(ploice)";
    }
    
    override func simpleDescribe() -> String {
        return "\(ploice) is here";
    }
    
    var logo : String {
        get {
            return "\(showLogo) + 1111";
        }
        set {
            showLogo = "\(newValue) + logo set";
        }
    }
    
    var logos : String {
        get {
            return "\(showLogo) + 1111";
        }
        set {
            showLogo = "\(newValue) + logo set";
        }
    }
}