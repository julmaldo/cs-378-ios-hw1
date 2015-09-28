# cs-378-ios-hw1
In this assignment I learned the basics of object oriented programming in swift

Assignment discription below:
Create and run an OSX Command Line application using Swift.
Steps:

Project Creation:
  1. If you are going to use your own computer for this course, Install Xcode (latest version is
      6.4). See link below.
  2. Create an OSX Command Line Tool application project.
  3. In the Product Name field enter “<last-name><first-name>-hw1”. (SmithJoe-hw1)
  4. In the Language field select Swift.

Application specifics:
1. Define a class named Automobile.
  1. Define the following properties:
    1. Name: make, Data type: string, Accessibility: private
    2. Name: model, Data type: string, Accessibility: private
    3. Name: numberOfDoors, Data type: integer, Accessibility: private
    4. Name: speed, Data type: integer, Accessibility: private
  
  2. Define the following methods:
    1. An ‘init’ method, with arguments for each property. Initialize all properties to their
      passed-in value.
    2. A class-level method named ‘create’, with arguments for each property. it’s purpose
      is to create an instance of an Automobile object, using the passed in initial property
      values.
   3. Get and set instance methods for each private property, named get<property-name>,
       set<property-name> using appropriate camel-casing. Example: getMake() -> String,
       setMake(value:String).
    4. A method named ‘description’ that will produce the following output:
       Make: <make>, Model: <model>, NumDoors: <number-of-doors>, Speed: <speed>

  3. Define a ‘main’ global-scope function, with no arguments. In this function:
    1. Create 3 Automobile objects with properties that produce the desired output, using
      the create method.
    2. Define a loop that iterates 10 times, updating the speed of each Automobile object.
      Use the random value generation method below (randomValueBetween) in the loop
      to get a random number for each speed set. Use minimum and maximum values of 0
      and 16, respectively.
    3. Call each object’s description method, to output their final state.
    4. Call the ‘main’ global-scope function.

2. The output should look like this, with speed values different:
    Make: Maserati, Model: GranTurismo, NumDoors: 2, Speed: 0
    Make: Honda, Model: Accord, NumDoors: 4, Speed: 0
    Make: Tesla, Model: S 90, NumDoors: 2, Speed: 0

3. Build and run the app, and verify the output is correct.
 
Random number generation code to include:
func randomValueBetween(min:UInt32, max:UInt32) -> UInt32 {
var randomValue:UInt32 = min + arc4random_uniform(UInt32(max - min + 1))
return randomValue
}
