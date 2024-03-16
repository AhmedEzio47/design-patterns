abstract interface class Prototype<T> {
  T clone();
}

class Vehicle implements Prototype<Vehicle> {
  String? model;
  String? brand;
  String? color;
  int? price;

  Vehicle({
    this.model,
    this.brand,
    this.color,
    this.price,
  });

  Vehicle.clone(Vehicle vehicle) {
    model = vehicle.model;
    brand = vehicle.brand;
    color = vehicle.color;
    price = vehicle.price;
  }

  @override
  Vehicle clone() => Vehicle.clone(this);
}

/// The clone method in this class involves Shallow copying as it uses the same
/// [SpeedLimitSystem] object and does not create a new one using cloning
class ClassicCar extends Vehicle {
  ClassicCar({
    super.brand,
    super.model,
    super.color,
    super.price,
    this.speedLimitSystem,
  });

  ClassicCar.clone(ClassicCar car) : super.clone(car) {
    speedLimitSystem = car.speedLimitSystem;
  }

  SpeedLimitSystem? speedLimitSystem;

  @override
  String toString() {
    return 'ClassicCar(model: $model, brand: $brand, color: $color, price: $price)';
  }

  @override
  ClassicCar clone() => ClassicCar.clone(this);
}

/// The clone method in this class involves Deep copying as it clones the
/// [GpsSystem] object and does not use the reference to the old one
class ModernCar extends Vehicle {
  ModernCar({
    super.brand,
    super.model,
    super.color,
    super.price,
    this.gpsSystem,
  });

  ModernCar.clone(ModernCar car) : super.clone(car) {
    gpsSystem = car.gpsSystem?.clone();
  }

  GpsSystem? gpsSystem;

  @override
  String toString() {
    return 'ModernCar(model: $model, brand: $brand, color: $color, price: $price)';
  }

  @override
  ModernCar clone() => ModernCar.clone(this);
}

class SpeedLimitSystem {}

class GpsSystem implements Prototype<GpsSystem> {
  double? lat;
  double? lng;

  GpsSystem(GpsSystem gpsSystem) {
    lat = gpsSystem.lat;
    lng = gpsSystem.lng;
  }

  @override
  GpsSystem clone() => GpsSystem(this);
}
