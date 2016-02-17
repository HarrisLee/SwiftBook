//: Playground - noun: a place where people can play

import UIKit

let numbers = [1,3,5,6,7,8];
let nums = numbers.map({num in 3*num});

enum Rank: Int {
    case Ace = 1;
    case Two,Three,Four,Five,Six,Seven;
    case Jack,Queen;
    func simpleDes()->String{
        switch self {
        case .Two:
            return "tew";
        default:
            return "\(self.rawValue)";
        }
    }
}

enum Suit:Int {
//    case Spades = 1;
    case Spades,Hearts,Diamonds,Clubs;
    func simpleDes()->String{
        switch self {
        case .Spades:
            return "Spades";
        default:
            return "\(self.rawValue)";
        }
    }
}

var ace = Rank.Three;
print(ace.simpleDes());
print(ace.rawValue);

ace = Rank.Two;
print(ace.simpleDes());


struct Card {
    var rank: Rank;
    var suit: Suit;
    func simpleDesc()->String{
        return "The \(rank.simpleDes()) of \(suit.simpleDes())";
    }
}

let card = Card(rank: .Jack, suit: .Hearts);
let result = card.simpleDesc();



//`SubStruct`中`mutating`关键词的使用，用来标记一个可以修改结构体的方法。
//声明`SubClass`时则不需要标记任何方法为`mutating`，因为类上的方法都可以对类进行修改。
protocol ExampleProtocol {
    
    var simpleMsg : String {get set};
    
    mutating func sendMsg(msg : String, user : String) -> String;
    
}


class SubClass : ExampleProtocol {
    var simpleMsg:String = "this is a simple class msg!";
    func sendMsg(msg: String, user: String) -> String {
        simpleMsg = simpleMsg + "hello";
        return "I send a msg:\(msg) to \(user)";
    }
}
var user = SubClass();
let msg = user.sendMsg("How are you!", user: "Jim");
let simple = user.simpleMsg;


struct SubStruct : ExampleProtocol {
    var simpleMsg:String = "this is simple struct msg!";
    //不加 ‘mutating‘ 关键字。   simpleMsg 是无法修改的。
    mutating func sendMsg(msg: String, user: String) -> String {
        simpleMsg = simpleMsg + "hello";
        return "I send a msg:\(msg) to \(user)";
    }
    
}

var structSim = SubStruct();
let send = structSim.sendMsg("struct", user: "Tom");
let msgStruct = structSim.simpleMsg;


enum subEnum : ExampleProtocol{
    case First(String),Second(String),Third(String);
    
    var simpleMsg:String {
        get {
            switch self {
            case let .First(text):
                return text;
            case let .Second(text):
                return text;
            case let .Third(text):
                return text;
            }
        }
        set {
            switch self {
            case .First(_):
                self = .First(newValue);
            case .Second(_):
                self = .Second(newValue);
            case .Third(_):
                self = .Third(newValue);
            }
        }
   }

   //不加 ‘mutating‘ 关键字。   simpleMsg 是无法修改的。
   mutating func sendMsg(msg: String, user: String) -> String {
        switch self {
        case let .First(text):
        self = .First(text + " first case adjusted");
        case let .Second(text):
        self = .Second(text + " second case adjusted");
        case let .Third(text):
        self = .Third(text + " third case adjusted")
        }
        return self.simpleMsg;
    }
}

var enmPro = subEnum.First("User");
let msgEnum = enmPro.simpleMsg;
let sendEnum = enmPro.sendMsg("msg send", user: "Green");
