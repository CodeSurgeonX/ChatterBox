import UIKit

var str = "Hello, playground"


func calculate (_ A : Int, _ B : Int, operation : (Int,Int)->Int ) -> Int{
    return operation(A,B)
}

func add (withNumber A : Int, otherNumber B:Int) -> Int {
    return A+B
}

calculate(4, 5, operation: add)


func multiply(_ A : Int, _ B : Int) -> Int{
    return A*B
}

calculate(4, 5, operation:multiply)



var sub = { (A:Int, B:Int) -> Int in
    return A-B
}


calculate(5, 4, operation: sub)


calculate(10, 5){ $0 / $1 }   //$0 first and so on   // Example of trailing closure
//Map Reduces Methods in Arrays Expect Closures

func doSomething (_ A:String,_ B:String,_ C:String,_ operation : (String,String,String)->String){
    operation(A,B,C)
}


doSomething("Shashwat "," Kashyap "," From India"){  $0+$1+$2 }



func functionOne(_ A:String, _ B:String, _ handler : (String)->()){
    let result : String = A+B
    handler(result)
}


func myCustomeHandler(_ A :String){
    print(A)
    print("Task Was Completed")
}


functionOne("Shashwat "," Kashyap", myCustomeHandler)
