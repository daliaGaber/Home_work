/**
 Q2
Model shapes to compute total paintable area and cost.
Requirements:-
 Provide a general shape type (concrete class) with an area() method that can be overridden.
 - Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.
 */

void main() {
  Circle circle1 = Circle(4);
  Rectangle rectangle1 = Rectangle(5, 8);
  Square square1 = Square(9);
  List<Shapes> areas = [circle1, rectangle1, square1];
  double totalArea = 0;
  for (var shape in areas) {
    totalArea += shape.area();
  }
  double totalCost = 0;
  double remainingArea = totalArea;
  if (remainingArea > 50) {
    totalCost += 50 * 1.50;
    remainingArea -= 50;
  } else {
    totalCost += remainingArea * 1.50;
    remainingArea = 0;
  }
  if (remainingArea > 100) {
    totalCost += 100 * 1.25;
    remainingArea -= 100;
  } else {
    totalCost += remainingArea * 1.25;
    remainingArea = 0;
  }
  totalCost += remainingArea * 1.00;
  print('total Paintable Area: ${totalArea.toStringAsFixed(2)} units');
  print('total Painting Cost: \$${totalCost.toStringAsFixed(2)}');
}

class Shapes {
  area() {}
}

class Circle extends Shapes {
  double radius = 0;
  Circle(double radius) {
    if (radius > 0) {
      this.radius = radius;
    } else {
      print('Invalid, keep previous');
    }
  }
  @override
  double area() {
    double circleArea = 3.14 * radius * radius;
    return circleArea;
  }
}

class Rectangle extends Shapes {
  double width = 0;
  double height = 0;
  Rectangle(double width, double height) {
    if (width > 0 && height > 0) {
      this.width = width;
      this.height = height;
    } else {
      print('keep previous');
    }
  }
  @override
  double area() {
    double rectangleArea = width * height;
    return rectangleArea;
  }
}

class Square extends Shapes {
  double length = 0;
  Square(double length) {
    if (length > 0) {
      this.length = length;
    } else {
      print('keep previous');
    }
  }
  @override
  double area() {
    double squareArea = length * length;
    return squareArea;
  }
}
