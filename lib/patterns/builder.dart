import 'package:mixins/models/car.dart';

class CarBuilder {
  String? model;
  String? brand;
  String? color;
  int? price;

  CarBuilder({
    this.model,
    this.brand,
    this.color,
    this.price,
  });

  CarBuilder withModel(String model) {
    this.model = model;
    return this;
  }

  CarBuilder withBrand(String brand) {
    this.brand = brand;
    return this;
  }

  CarBuilder withColor(String color) {
    this.color = color;
    return this;
  }

  CarBuilder withPrice(int price) {
    this.price = price;
    return this;
  }

  Car build() => Car(
        model: model,
        brand: brand,
        color: color,
        price: price,
      );

  /// This is an alternative to Director classes
  /// I call it a director method
  static Car buildBugatti() => Car(
        model: 'Chiron',
        brand: 'Bugatti',
        color: 'Black',
        price: 3000000,
      );
}
