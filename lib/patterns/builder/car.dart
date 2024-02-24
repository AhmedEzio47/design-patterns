class Car {
  String? model;
  String? brand;
  String? color;
  int? price;

  Car({
    this.model,
    this.brand,
    this.color,
    this.price,
  });

  @override
  String toString() {
    return 'Car(model: $model, brand: $brand, color: $color, price: $price)';
  }
}
