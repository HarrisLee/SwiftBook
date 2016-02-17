//: Playground - noun: a place where people can play

import UIKit

protocol ExampleProtocol {
    var ex : String {get};
    mutating func showEx()->String;
}

extension Int : ExampleProtocol{
    func showStringValue ()->String {
        return "string Value is \(self)";
    }
    
    var ex : String {
        return "exName";
    }
    func showEx() -> String {
        return self.ex + " is my Name";
    }
    
}

let number:Int = 5;
let stringValue = number.showStringValue();

number.ex;
number.showEx();

extension Double {
    var absoluteValue : Double {
        return self > 0 ? self : 0 - self;
    }
}

var value : Double = -0.5;
value.absoluteValue;
value = 0.5;
value.absoluteValue;

let `extension` = 100_00.00_0;
print(1);



let one:UInt16 = 10;
let two:UInt8 = 1;
let sum = UInt16(two) + one ;


let pNum:String = "111.1";
Double(pNum);


var possibleNumber : String? = "possible";

if let name = possibleNumber {
    print("number");
}

possibleNumber = nil;

if let name = possibleNumber {
    print("number");
}
