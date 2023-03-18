import 'package:flutter/material.dart';

import 'facilities_list_item.dart';

class FacilitiesList extends StatelessWidget {
  const FacilitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Welcome !',
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text('Yaser Hasan',
                              style: TextStyle(color: Colors.purple)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.amber[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Our Offices',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FacilityItem(facilitiess[0]),
                    const SizedBox(
                      height: 15,
                    ),
                    FacilityItem(facilitiess[1]),
                    const SizedBox(
                      height: 15,
                    ),
                    FacilityItem(facilitiess[2]),
                    const SizedBox(
                      height: 15,
                    ),
                    FacilityItem(facilitiess[3]),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ])),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.purple, borderRadius: BorderRadius.circular(25)),
          width: 200,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}















// import 'package:provider/provider.dart';
//
//
// import '../../allProjectClasses.dart';
//
// class ListFacilitiesScreen extends StatelessWidget {
//   const ListFacilitiesScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final facilityProvider = Provider.of<LoginModel>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Facilities'),
//       ),
//       body: FutureBuilder(
//         future: facilityProvider.fetchFacilities(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return ListView.builder(
//               itemCount: facilityProvider.facilities.length,
//               itemBuilder: (context, index) {
//                 final facility = facilityProvider.facilities[index];
//                 return ListTile(
//                   leading: Image.network(
//                     facility.imageUrl,
//                     fit: BoxFit.cover,
//                     width: 100.0,
//                   ),
//                   title: Text(facility.name),
//                   subtitle: Text(facility.location),
//                   onTap: () {
//                     // Navigate to facility details screen
//                   },
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
