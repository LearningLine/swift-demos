//
//  main.swift
//  IntermediateSwiftWebcast
//
//  Created by Bradley Needham on 5/27/15.
//  Copyright (c) 2015 DevelopMentor. All rights reserved.
//

import Foundation

protocol Printable {
    var name : String { get }
    func print()
}

protocol Drawable {
    func draw()
}

func render(shapes: [Drawable]) {
    for s in shapes {
        s.draw()
    }
}

class Circle : Drawable, Printable {
    var name : String { return "Circle" }
    
    func draw() {
        println("draw circle")
    }
    func print() {
        println("print circle")
    }
}

class Line : Drawable {
    func draw() {
        println("draw line")
    }
}

var a : [Drawable] = [Circle(), Line()]

render(a)















//struct Point {
//    var x = 0.0
//    var y = 0.0
//
//    init(x: Double, y: Double) {
//        self.x = x
//        self.y = y
//    }
//    
//    mutating func scale(#by: Double) {
//        self.x *= by
//        self.y *= by
//    }
//}
//
//
//var p = Point(x: 1.0, y: 3.0)
//
////p.x = 1.0
////p.y = 3.0
//
//p.scale(by: 2.0)
//
//
//println("x = \(p.x) y = \(p.y)")
//

//class Apple {
//    var weight = 1.0
//    var redness = 1.0
//
//    func grow(water: Double, food: Double) {
//        self.weight += water * food
//    }
//}
//
//func eat(let apple: Apple) {
//    apple.weight -= 0.5
//}
//
//var a = Apple()
//
//println("\(a.weight) \(a.redness)")
//
//a.grow(2.0, food: 1.2)
//
//println("\(a.weight) \(a.redness)")
//
//eat(a)
//
//println("\(a.weight) \(a.redness)")
//
//
//


