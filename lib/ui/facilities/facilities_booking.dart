import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacilityBokking extends StatefulWidget {
  const FacilityBokking({Key? key}) : super(key: key);

  @override
  State<FacilityBokking> createState() => _FacilityBokkingState();
}

class _FacilityBokkingState extends State<FacilityBokking> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Facility Booking'),
      ),
      body: Column(
        children: [
          Text('Facility Name'),
          ElevatedButton(onPressed: (){}, child: Text('Book')),
        ],
      ),
    );
  }
}

