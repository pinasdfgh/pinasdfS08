//
//  classApi.swift
//  pinasdS08
//
//  Created by user on 2017/6/15.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation
class c1{
    
}

class c2{
    init(){       //建構式 ＝> 1.funcX 2. ->X 沒有return 3. 物件初始化（屬性）
        print("init")
    }
}


class c3{
    var x = 1
    var y = 1
    init(){
        
    }
}

class c4{
    var x:Int
    var y:Int
    //不用this 用self
    init(x:Int, y:Int){
        self.x = x
        self.y = y
    }
    func m1()->Int{
        return 123
    }
}

class student{
    var sid:String
    var eng:Int
    var math:Int
    var chen:Int

    init(_ sid:String,_ eng:Int,_ math:Int,_ chen:Int){
        self.sid = sid
        self.eng = eng
        self.math = math
        self.chen = chen
    }
    
    func sum()->Int{
         return eng + math + chen
    }
    func avg() -> Double{
        return Double(sum())/3.0
    }
}

class Bike{
    private var speed:Double
    
    init(_ speed:Double){
        self.speed = speed
    }
    func upSpeed(){
        speed = speed < 1 ? 1 : speed*1.2
    }
    func downSpeed(){
        speed = speed < 1 ? 0 : speed*0.7
    }
    func getSpeed()->Double{
        return speed
    }
    func clone()-> Bike{
        return Bike(speed)
        //物件不同在於屬性 若傳回self沒意義
    }
    
}

class c6{
    init(){
        print("c6:init()")
    }
    func m1(){
        print("c6:m1()")
    }
}


class c5{
    var p1 = c6()
    lazy var p2:c6 = c6()
    //修飾字 lazy代表物件內的物件先不做建構式,可以到要用時在建構（效能較佳）
    func dosomething(){
        print("OK")
        p2.m1()
    }
}

//class A{
//    var B
//}
//A=>obj1
//obj1 -> has a B
//obj1 ->is a A

struct MyClass3{
    var x = 1
    var y = 1
}
struct MyClass4{
    var v1 = MyClass3()
    var v2:MyClass3 {
        //回傳結構return
        get{
            let newx = v1.x + 10
            let newy = v1.y + 20
            return MyClass3(x:newx,y:newy)
        }
        //建結構要給參數 Ｖ2 = aClass3Obj加上 Ｖ1改變
//        set(aClass3Obj){
//            v1.x = aClass3Obj.x - 10
//            v1.y = aClass3Obj.y - 30
//lll
//        }
        ////若不給struct可以寫成這樣
        set{
            v1.x = newValue.x - 10
            v1.y = newValue.y - 30
        //newValue => swift 內定 代表空
            
        }
    }
    var v3:MyClass3{
        //{.........}中可以使用原先定義的屬性
        //定義getter & setter
        //透過Ｖ3的getteer ==>xxx = v3
        //setter ===> v3 = xxx
        get{
            return MyClass3(x:1,y:2)
        }
        set(aVar){
            //aVar 一定是 ＭyＣlass
        }
    }
}

class MyScore{
    var x = 0,y = 0,z = 0
    var sum:Int{
        //不寫get or set 就都是get
//        get{
            return x + y + z
//        }
    }
    //sum 是屬性
    var avg:Double{
        get{
            return Double(sum)/3.0
        }
    }
}
//                        1.willSet
//    a = b ==>action     2.a<--b
//                        3.didSet

class MyClass5{
    var x:Int = 0{
        willSet(newx){
            print("before:\(x)-->\(newx)")
        }
        didSet{
            print("after:\(x)")

        }
    }
    
}

//在結構中方法不能改值除非使用修飾字mutating
struct MyStruct111{
    var a = 1
    mutating func f1(){
        a = 2
        print(a)
        self = MyStruct111(a:100)
    }
}

class MyClass111{
    var a = 1
    func f1(){
        a = 2
        print(a)
    }
}

//HW_
//
//init() ->
//init(Bool)
//init(int)
//init(bool,int)
//init()







