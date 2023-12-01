import 'package:flutter/material.dart';

class CarData {
  final String plateNumber;
  final int seatCount;
  final String driverName;
  final String carModel;
  final double fuelAmount;
  final double kilometers;

  CarData({
    required this.plateNumber,
    required this.seatCount,
    required this.driverName,
    required this.carModel,
    required this.fuelAmount,
    required this.kilometers,
  });
}

class CarDataPage extends StatelessWidget {
  const CarDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final car1 = CarData(
      plateNumber: '42AAK247',
      seatCount: 15,
      driverName: 'Faruk Güler',
      carModel: 'Model X',
      fuelAmount: 60.0,
      kilometers: 150000.0,
    );

    final car2 = CarData(
      plateNumber: '42FRK123',
      seatCount: 13,
      driverName: 'Ahmet Yılmaz',
      carModel: 'Model Y',
      fuelAmount: 75.5,
      kilometers: 120000.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Data'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarInfoCard(carData: car1),
            const SizedBox(height: 20),
            CarInfoCard(carData: car2),
          ],
        ),
      ),
    );
  }
}

class CarInfoCard extends StatelessWidget {
  final CarData carData;

  const CarInfoCard({Key? key, required this.carData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Plate Number: ${carData.plateNumber}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Seat Count: ${carData.seatCount}'),
            Text('Driver: ${carData.driverName}'),
            Text('Car Model: ${carData.carModel}'),
            Text('Fuel Amount: ${carData.fuelAmount} liters'),
            Text('Kilometers: ${carData.kilometers} km'),
          ],
        ),
      ),
    );
  }
}
