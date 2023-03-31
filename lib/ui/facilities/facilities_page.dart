import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/facilities_provider.dart';

import 'facilities_list_item.dart';

class FacilitiesList extends StatefulWidget {
  const FacilitiesList({super.key});

  @override
  State<FacilitiesList> createState() => _FacilitiesListState();
}

class _FacilitiesListState extends State<FacilitiesList> {
  @override
  void initState() {
    super.initState();
    FacilitiesProvider().getFacilities();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<FacilitiesProvider>(context);
    var facilitiess = provider.facilities;
    if (provider.state == FacilitiesUIsStates.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeHeader(),
            const OurOffices(),
            Expanded(
              child: ListView.builder(
                itemCount: facilitiess.length,
                itemBuilder: (context, i) {
                  return FacilityItem(facilitiess[i]);
                },
              ),
            ),
          ],
        ),
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

class OurOffices extends StatelessWidget {
  const OurOffices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Our Offices',
        style: TextStyle(
          color: Colors.purple,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text('Yaser Hasan', style: TextStyle(color: Colors.purple)),
              ],
            ),
          ],
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
