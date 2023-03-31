import 'package:flutter/material.dart';

import '../../models/facility.dart';
import 'facilities_booking.dart';

class FacilityItem extends StatelessWidget {
  const FacilityItem(this.facility, {super.key});
  final Facilities facility;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        width: double.infinity,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FacilityBokking(),)),
                  child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.network(
                        facility.image,
                        width: 250,
                      )),
                ),
                const SizedBox(height: 10),
                Text(facility.title),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(facility.subtitle),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            facility.state ? Colors.green : Colors.red,
                      ),
                      child: facility.state
                          ? const Text('Available')
                          : const Text('Unavailable'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
