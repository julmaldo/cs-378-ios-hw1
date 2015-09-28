//
//  main.swift
//  MaldonadoJulio-hw1
//
//  Created by Julio Maldonado on 9/2/15.
//  Copyright (c) 2015 Julio Maldonado. All rights reserved.
import Cocoa

class Automobile
{
    //variables
    private var make:String
    private var model:String
    private var numberOfDoors:Int
    private var speed:Int
    
    //getters
    func getMake() -> String{
    return self.make
    }
    func getModel() -> String{
        return self.model
    }
    func getNumberOfDoors() -> Int{
    return self.numberOfDoors
    }
    func getSpeed() -> Int{
    return self.speed
    }
    
    //setters
    func setMake (value:String){
        make = value
    }
    func setModel (value:String){
        model = value
    }

    func setNumberOfDoors (value:Int){
        numberOfDoors = value
    }
    func setSpeed (value:Int){
        speed = value
    }
    
    //Init function
    init (make:String, model:String, numberOfDoors:Int, speed:Int)
    {
        self.make = make
        self.model = model
        self.numberOfDoors = numberOfDoors
        self.speed = speed
    }
    //class function that creates and returns an instance of automobile class
    class func create(make:String, model:String, numberOfDoors:Int, speed:Int) -> Automobile
    {
        let cartmp = Automobile(make: make, model: model, numberOfDoors: numberOfDoors, speed: speed)
        return cartmp
    }
    //returns decription of automobile function
    func description ()-> String
    {
        let description = "Make: \(self.make), Model: \(self.model), NumDoors: \(self.numberOfDoors), Speed: \(self.speed)"
        return description
    }
}

func main()
{
    //random value function
    func randomValueBetween(min:UInt32, max:UInt32) -> UInt32 {
    let randomValue:UInt32 = min + arc4random_uniform(UInt32(max - min + 1))
    return randomValue
    }
    
    var carOne:Automobile = Automobile.create("Maserati", model: "GranTurismo", numberOfDoors: 2, speed: 0)
    var carTwo:Automobile = Automobile.create("Honda", model: "Accord", numberOfDoors: 4, speed: 0)
    var carThree:Automobile = Automobile.create("Tesla", model: "S 90", numberOfDoors: 2, speed: 0)
    for (var i = 0; i <= 10; i++){
        carOne.setSpeed(Int(randomValueBetween(0, max: 16)))
        carTwo.setSpeed(Int(randomValueBetween(0, max: 16)))
        carThree.setSpeed(Int(randomValueBetween(0, max: 16)))
    }
    print(carOne.description())
    print(carTwo.description())
    print(carThree.description())
}

main()




