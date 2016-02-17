//
//  ViewController.swift
//  MyApp
//
//  Created by JianRongCao on 1/26/16.
//  Copyright © 2016 JianRongCao. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        var constant : String = "hello";
//        constant = constant + " 111";
//
//        
//        let variable : String = "sss";
//        let width:Float = 4.0;
//        constant = constant + variable;
//        let msg = "my name is oliver \(width) name";
//        print("hello world",constant,variable,width,msg);
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
//        let width:Float = 4.0;
//        let msg = "my name is oliver \(width) name";
//        NSLog("%@", msg);
//        
//        
//        
//        var suning = ["zjb","cjr","gyc"];
//        suning[1] = suning[1] + " is best";
//        NSLog("%@", suning);
//
//        
//        var show = ["cjr":"15050","zjb":"1504"];
//        show["cjr"] = "15050382";
//        show["name"] = "1111";
//        NSLog("%@", show["name"]!);
//
//        
//        let enumerate = ["jim","tom","green","tim"];
//        for item in enumerate {
//            NSLog("%@", item);
//            if item == "jim" {
//                NSLog("jim yes");
//            } else {
//                NSLog("no jim");
//            }
//        }
//        
//        for var i = 0; i < 3; i++ {
//            NSLog("%@", enumerate[i]);
//        }
        

//        var optionalString : String? = "hello";
//        optionalString = (optionalString)! + "  god!";
//        print(optionalString == nil);
//        
//        let optionalName : String? = "John Apple seed";
//        var greet = "Hello!";
//        if let name = optionalName {
//            greet = "Hello,\(name)";
//        }
//        NSLog("%@", greet);
        
//        let vegetable = "red pepper";
//        switch(vegetable){
//            case "bananer":
//                NSLog("vegetable is \(vegetable) %@", "1111");
//            case "red pepper":
//                NSLog("vegetable is not \(vegetable) %@", "1111");
//            default:
//                NSLog("everything tastes good in soup!");
//        }
        
//        var largest = 0;
//        let interestingNumber = ["Prime":[2,3,4,5,6],"Fribonacci":[1,1,1,2,3],"Square":[1,4,9,16,25]];
//        for (kind,numbers) in interestingNumber {
//            for number in numbers {
//                if (number > largest){
//                    largest = number;
//                }
//            }
//        }
//        print(largest);
        
//        var count = 5;
//        while count > 1 {
//            print(count);
//            count--;
//        };
        
//        for index in 0 ..< 6 {     // ..< 不包含6    ...包含6
//            print(index);
//        }
//
//        let msg = self.sayHello("jim", "tom");
        
//        let scores = [15,21,98,1,55];
//        let statics = self.calculateStatistics(scores);
//        NSLog("%d,%d,%d", statics.min,statics.max,statics.sum);
        
//        NSLog("avg is %.2f", avagerNumber(95.5,89.1,10.2));
//        
//
//        NSLog("%d", returnFifteen());
        
//        self.noReturnFunction("Jimmy");
      
//        containCharacter("adcccccswd", charcter: "s");

//        print(makeIncrementer()(10));
        
//        let numbers = [1,9,5,6,7,8];
//        let result = numbers.map({
//            (num:Int) -> Int in
//            if num % 2 != 0 {
//                print(num);
//            }
//            return num % 2 != 0 ? 0 : num;
//        });
//        print(result);
//
//        let result = numbers.map({
//            num in num % 2 != 0 ? 0 : num;
//        });
//        print(result);
//        let sort = numbers.sort(){$0>$1};
//        print(sort);
//        let sort = numbers.sort(){ > };

//        var name = "Jimmy";
//        print(showName(&name));
//        print(name);     //作为形参传入到函数时，不影响外部的值。
//        name = showName(&name);
//        print(name);
        
        
//        let makeFun  = makeIncrementer;
//        print(makeFun()(15));
//        var currentValue = 9;
//        let moveToZero = chooseStepFunction(currentValue>0);
//        while currentValue != 0 {
//            moveToZero(&currentValue);
//            print(currentValue);
//        }
        
//        let names = ["Allen","nBob","Carry","wade"];
        
//        let digitNames = [0:"Zero",1:"One",2:"Two",3:"Three",4:"Four"];
//        let numberSets = [12,23,410];
//        let strings = numberSets.map{
//            (var num) -> String in
//            var output  = String();
//            while num > 0 {
//                output = digitNames[num%10]! + output;
//                num = num/10;
//            }
//            return output;
//        };
//        print(strings);

        let blockUser = clickAtIndex(3, "Green");
        NSLog("%@",blockUser());
        
    }

    func clickAtIndex(index : Int,_ name : String) -> ()->String{
        var user = "";
        func someOneSay() ->String{
            user = "\(name) say \(index) to Jim";
            return user;
        }
        return someOneSay;
    }
    
    
    func backwards(s1 : String,s2:String) ->Bool {
        return s1 > s2;
    }
    
    func chooseStepFunction(backwards:Bool) ->(inout Int)->Int{
        
        func stepForward(inout input : Int) ->Int{
            return input++;
        }
        
        func stepBackward(inout input : Int) ->Int{
            return input--;
        }
        
        return backwards ? stepBackward : stepForward;
    }
    
    
    
//    func chooseStepFunction(backwards:Bool) ->(inout Int)->Int{
//        return backwards ? stepBackward : stepForward;
//    }
//    func stepForward(inout input : Int) ->Int{
//        return input++;
//    }
//    
//    func stepBackward(inout input : Int) ->Int{
//        return input--;
//    }
    
    func showName(inout string:String) -> String{   //形参前面不加var 是没有办法对形参进行修改的。 即：没有修饰符 形参默认为let(常量).
        string = string + "111";
        return string;
    }
    
    /*! 函数嵌套函数*/
    func makeIncrementer() -> (Int -> Int){
        var num = 10;
        func addOne(number: Int) -> Int{
            return 1+number;
        }
        return addOne;
    }
    
    func returnFifteen() ->Int {
        var y = 5;
        func addten() -> Int {
            y += 10;
            return y;
        }
        addten();
        return y;
    }
    
    func noReturnFunction(name:String){
        NSLog("\(name)");
    }
    
    func containCharacter(word:String,charcter:Character){
        for charcterIndex in word.characters {
            if charcter == charcterIndex {
                let countString = "1sddfff年后钟山ssss";
//                count(countString.characters);
                
                NSLog("\(word) contains \(charcter)    \(countString.characters.count)");
            }
        }
    }
    
    /**
     最大数，最小数，和
     
     :param: scores 数组
     :param: max    最大数
     :param: sum    和
     
     :returns: 最大数，最小数，和
     */
    func calculateStatistics(scores:[Int]) ->(min: Int, max: Int, sum: Int) {
        var minValue = scores[0];
        var maxValue = scores[0];
        var sumValue = 0;
        for score in scores {
            if minValue > score {
                minValue = score;
            } else if maxValue < score {
                maxValue = score;
            }
            sumValue += score;
        }
        return (minValue,maxValue,sumValue);
    }
    
    /**
     求平均数
     
     :param: numbers 所有的数
     
     :returns: 平均数
     */
    func avagerNumber(numbers: Double...) -> Double{
        if numbers.count == 0 {
            return 0;
        }
        var sum = 0.0;
        for number in numbers
        {
            sum += number;
        }
        return sum/Double(numbers.count);
    }
    
    func sayHello(name: String, _ toWho: String) ->String{   //加  “_ ”可以在调用方法时，省略参数名称
        let msg = "\(name) say hello to \(toWho)";
        NSLog("\(name) say hello to \(toWho)");
        return msg;
    }
}

