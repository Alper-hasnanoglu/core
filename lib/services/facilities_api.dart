import 'package:http/http.dart' as http;
 class FacilitiesApi {



   getFacilities() {
     var response = http.get(Uri.parse('https://google.com'));


   }
 }