import 'dart:io';

abstract class Drawable {
  void draw();
}

abstract class Shape implements Drawable {
  final String color;

  Shape(this.color);

  // Override in subclasses
  double getArea();
}

class Circle extends Shape {
  final double radius;

  Circle(String color, this.radius) : super(color);

  @override
  double getArea() => 3.14 * radius * radius;

  @override
  void draw() {
    print("Drawing a $color circle with radius $radius");
  }
}

class Square extends Shape {
  final double sideLength;

  Square(String color, this.sideLength) : super(color);

  @override
  double getArea() => sideLength * sideLength;

  @override
  void draw() {
    print("Drawing a $color square with side length $sideLength");
  }
}

List<Shape> loadData(String filename) {
  final shapes = <Shape>[];
  try {
    final lines = File(filename).readAsLinesSync();
    for (final line in lines) {
      final parts = line.split(',');
      if (parts.length != 3) {
        print("Warning: Invalid data format in file '$filename'");
        continue;
      }
      final shapeType = parts[0];
      final color = parts[1];
      final value = double.parse(parts[2]);
      if (shapeType == 'circle') {
        shapes.add(Circle(color, value));
      } else if (shapeType == 'square') {
        shapes.add(Square(color, value));
      } else {
        print("Warning: Unknown shape type '$shapeType' found in file");
      }
    }
  } catch (e) {
    print("Error reading file '$filename': $e");
  }
  return shapes;
}

void main() {
  final shapes = loadData('path-to-file');

  // Loops through shapes and calls draw method (demonstrating loop)
  for (final shape in shapes) {
    shape.draw();
  }
}
