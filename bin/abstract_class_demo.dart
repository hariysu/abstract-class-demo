import 'package:abstract_class_demo/abstract_class_demo.dart'
    as abstract_class_demo;

// Define an abstract class
abstract class Shape {
  // Define an abstract method
  void draw();

  // A regular method
  void colorInfo() {
    print("Shape color is unspecified.");
  }
}

// A subclass derived from the abstract class
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  // NOTE-1: Implementation of the abstract method. We have to use abstract method because we inherit abstract class.
  @override
  void draw() {
    print("Drawing a circle with radius $radius");
  }

  // Overriding a regular method inherited from the abstract class. We don't have to use it.
  @override
  void colorInfo() {
    print("Circle color is unspecified.");
  }
}

// Another subclass derived from the abstract class
class Square extends Shape {
  double side;

  Square(this.side);

  // Implementation of the abstract method. We have to use abstract method because we inherit abstract class.
  @override
  void draw() {
    print("Drawing a square with side length $side");
  }
}

void main() {
  // Using objects derived from the abstract class
  Circle circle = Circle(5.0);
  circle.draw();
  circle.colorInfo();

  Square square = Square(4.0);
  square.draw();
  square.colorInfo();

  // NOTE-2: Abstract classes can't be instantiated. We can't create an object from Abstract class. This rule provides that
  // every method of abstract class can't be reached out of this class. Only objects of inherited(extended) class can reach them.
  // Shape abstractShape = Shape();
}
