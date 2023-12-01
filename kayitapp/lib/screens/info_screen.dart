import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kayitapp/screens/car_data.dart';

class InfoScreen extends StatefulWidget {
  final CarData carData;

  const InfoScreen({Key? key, required this.carData}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  List<bool> seatStates = List.generate(15, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Araç Bilgi"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.carData.plateNumber,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: widget.carData.seatCount,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        seatStates[index] = !seatStates[index];
                      });
                    },
                    child: SeatIcon(
                      isSelected: seatStates[index],
                    ),
                  );
                },
              ),
              Text(
                "Şöför: ${widget.carData.driverName}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SeatIcon extends StatelessWidget {
  final bool isSelected;

  SeatIcon({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        FontAwesomeIcons.chair,
        size: 50.0,
        color: isSelected ? Colors.red : Colors.green,
      ),
      alignment: Alignment.center,
    );
  }
}
