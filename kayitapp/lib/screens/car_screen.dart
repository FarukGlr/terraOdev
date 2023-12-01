import 'package:flutter/material.dart';
import 'package:kayitapp/screens/car_data.dart';

class CarScreen extends StatelessWidget {
  final CarData carData;

  const CarScreen({Key? key, required this.carData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Araç Bilgi Ekranı"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  height: 150,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/servis.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Plaka: ${carData.plateNumber}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                "Sürücü: ${carData.driverName}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                "Koltuk: ${carData.seatCount}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                "Model: ${carData.carModel}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                "Yakıt: ${carData.fuelAmount} L",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                "Kilometre: ${carData.kilometers}",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
