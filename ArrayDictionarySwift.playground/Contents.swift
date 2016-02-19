//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for scale in str.unicodeScalars {
    print("\(scale.value)");
}

let showname = ["cloud","wind"];

var foodList:[String] = ["eggs","meat","milk"];
foodList.count;
foodList.isEmpty;
foodList.append("dog");
//foodList.appendContentsOf(showname);  //在数组后面继续add一个数组
foodList.appendContentsOf(showname);    //在数组后面继续add一个数组

foodList[3];
foodList[3] = "lion";  //修改第3个元素的值
foodList;
foodList[3..<5] = ["tiger","miao"];  //在第3.4位置插入元素
foodList;
foodList[3].appendContentsOf("23");  //对第N个数据进行拼接处理
foodList;



foodList.insert("insertOne", atIndex: 3); //在第N的位置插入一个元素


foodList.insertContentsOf(showname, at: 3);  //在第N的位置插入一个数组


//foodList.removeAtIndex(1);  //删除第N的数据
foodList.removeFirst(2);  //删除0.1.2....N的数据

var someOne = [Int](count: 3, repeatedValue: 2);   //任意数量的值得数组
someOne.append(1);

var someTwo = [Int](count: 3, repeatedValue: 3);
someOne + someTwo;





var airports = ["TKO":"Tokyo","DUB":"Dublin"];

for (key,value) in airports {
    print("\(key):\(value)");
}

for value in airports.values {
    print("\(value)");
}



airports["TKO"];
airports["DUB"] = "DubLin";
airports;
airports.count;
airports["LHR"] = "London";
airports;
let oldValue = airports.updateValue("Londs", forKey: "LHR");  //返回更新前的值
airports.removeValueForKey("LHR");
airports.keys;
airports.removeAtIndex(airports.indexForKey("TKO")!);  //删除TKO的值。并将这个值返回
airports;

let namesOfIntegers = Dictionary<Int,String>();
let namesOfIntegers1 = [:];
