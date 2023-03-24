import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../models/facility.dart';

 class FacilitiesApi {


   Future<void> getFacilities() async {
     var url = 'https://gist.githubusercontent.com/mhassanist/38201f235f6c1b7a0b4f89effb89a399/raw/96ae3599141d35af90337b9d24b8550e36ed1a87/facilities.json';
     var response = await http.get(url as Uri);
     if (response.statusCode == 200) {
       var jsonResponse = convert.jsonDecode(response.body);
       var services = jsonResponse['data'];
       print('Facilities Statuses are here http: $services.');
       print('Every thing is OK');
     } else {
       print('Request failed with status: ${response.statusCode}.');
     }
   }


   getFakeFacilities(){
     const List<Facilities> facilitiess = [
       Facilities(
         id: 1,
         state: "available",
         title: "Seminar Hall",
         subtitle: "أحجز الآن ضمن كور اسطنبول",
         image: "images/free.jpg",
         description:
         "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوس أليكيوا.",
       ),
       Facilities(
         id: 2,
         state: "available",
         title: "Brainstorm Hall",
         subtitle: "أحجز الآن ضمن اجور مخفضة",
         image: "images/brainstorm.png",
         description:
         "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتاجنا أليكيوا.",
       ),
       Facilities(
         id: 3,
         state: "available",
         title: "Conference Hall",
         subtitle: "لنقلك للعالم الافتراضي",
         image: "images/training.png",
         description:
         "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج ديونتيوت لابوري ات دولار ماجنا أليكيوا.",
       ),
       Facilities(
         id: 4,
         state: "available",
         title: "Conference Hall",
         subtitle: "لساعات استماع طويلة",
         image: "images/conference.png",
         description:
         "لوريم ايبسوايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
       ),
       Facilities(
         id: 5,
         state: "available",
         title: "Small Hall",
         subtitle: "سجل اللحظات المهمة حولك",
         image: "images/small.jpg",
         description:
         "لوريم ايبسوم دولا أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
       ),
       Facilities(
         id: 6,
         state: "available",
         title: "Free Hall",
         subtitle: "بجودة ودقة صورة عالية",
         image: "images/free.jpeg",
         description:
         "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت لابوري ات دولار ماجنا أليكيوا.",
       ),
     ];

     return facilitiess;

   }
 }