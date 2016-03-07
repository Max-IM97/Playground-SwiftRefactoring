//: Playground - noun: a place where people can play

import UIKit



/////////////////////////////////////////////

/*Important! This homework contains all kinds of Swift features we have not covered yet. That's okay. You will often be working in environments where you don't understand every component. But as long as you pick out and work with the familiar portions you will be fine. This exercise will give you a taste of what that is like. Also, working with alien code will help you expand your toolset. If you see anything interesting here that is not addressed in one of the TODOs, look it up, read about it, formulate questions, and we will discuss them in the next class. Good luck! 

    Much of this homework will involve reorganizing and rewriting existing code. This part of what we refer to as refactoring.
*/

/////////////////////////////////////////////





class Shape {
    var numberOfSides: Int!
    var center: CGPoint!
    var color = UIColor.greenColor()
}

class Rectangle: Shape {
    var width: CGFloat!
    var height: CGFloat!
}

class Square: Rectangle {
    override var width: CGFloat! {
        willSet {
            if self.width == newValue { return }
            self.height = newValue
        }
    }
    override var height: CGFloat! {
        willSet {
            if self.height == newValue { return }
            self.width = newValue
        }
    }
}

class Circle: Shape {
    var radius: CGFloat!
    var diameter: CGFloat {
        get {
            return self.radius * 2
        }
    }
}


//TODO1: Review
//1) How many classes are defined?
//2) What is Square's parent class?
//3) How many subclasses does Circle have?
//4) Which property in which class has a default value?
//5) BONUS! Which class has a "computed" property?







//TODO2: Change the implicitly unwrapped optional properties in the Shape and Rectangle classes to safe optionals.




//TODO3: Oh no! If you did TODO2 correctly the code below will have errors use optional unwrapping to make this code safe and error free.
//`amountOfClothNeededToMakeTheFlag` should remain a global variable

let flag = Rectangle()
flag.width = 20
flag.height = flag.width / 1.61
let amountOfClothNeededToMakeTheFlag: CGFloat = flag.width * flag.height


//TODO4: This section contains an array. Arrays are just one of many data structures Swift provides for collecting related things.
//1) replace the explicit nil check with optional unwrapping
//2) replace the explicit cast to the Circle class with an optional one. Only print the "I definitely found a circle" if the cast is successful.
//option + click on variable names will be very helpful here. This will show you the types of the variables. And remember, Int != Int?. An Int variable has a different type than an Int? (optional int) variable.

let r = Rectangle()
r.numberOfSides = 4
let c = Circle()
c.radius = 5
let shapes = [r, c]

for shape in shapes {
    if shape.numberOfSides != nil {
        print("This shape has \(shape.numberOfSides)sides")
    } else {
        let circle = shape as! Circle
        print("I definitely found a circle")
    }
}







//TODO5: Declare an optional Rectangle variable. Safely print the rectangle's area if it has one. Otherwise print out which value missing value is preventing you from calculating the area.









//TODO6: In your own words, why doesn't it usually make sense to declare an optional with the `let` keyword?







