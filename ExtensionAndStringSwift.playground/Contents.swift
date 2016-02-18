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

var showname:String? = "012345671233 世界";
for cha in (showname!.characters) {
    print("\(cha)");
}



//String的截取
(showname! as NSString).substringFromIndex(3);
(showname! as NSString).substringToIndex(5);
(showname! as NSString).substringWithRange(NSMakeRange(2, 3));

showname?.substringFromIndex((showname?.startIndex.advancedBy(3))!);
showname?.substringToIndex((showname?.startIndex.advancedBy(3))!);
showname?.substringWithRange(Range<String.Index>(start: (showname?.startIndex.advancedBy(3))!, end: (showname?.startIndex.advancedBy(5))!));
let range = Range<String.Index>(start: (showname?.startIndex.advancedBy(3))!,end: (showname?.startIndex.advancedBy(5))!);
showname?.substringWithRange(range);



//String的URL编码
let batchSize = 50
var index = showname!.startIndex
var escaped = "";

while index != showname!.endIndex {
    let startIndex = index
    let endIndex = index.advancedBy(batchSize, limit: showname!.endIndex)
    let range = Range(start: startIndex, end: endIndex)
    
    let substring = showname!.substringWithRange(range)
    
    escaped += substring.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet()) ?? substring
    
    index = endIndex
}


//String的长度
//.utf16.count的返回值和NSString的length属性的值可能不相等。NSString的length属性是基于16位的代码单元（UTF-16描述），而并不是Unicode字符数。为了反映这个事实，NSString的length属性在访问Swift的String值时被命名为utf16count。
showname?.utf16.count;
showname?.lengthOfBytesUsingEncoding(NSUTF8StringEncoding);

if let ss = showname  {
    
} else {
    
}

assert(number < 6,"number is large");

showname?.isEmpty;





let string1 = "We're Family. Come On";
let string2 = "We're Family. Come On";

if string1 == string2 {
    print("1");
} else {
    print("2");
}

string1.hasPrefix("W");
string1.hasPrefix("O");



string1.lowercaseStringWithLocale(NSLocale.currentLocale());
string1.uppercaseStringWithLocale(NSLocale.currentLocale());
string1.lowercaseString;
string1.uppercaseString;
