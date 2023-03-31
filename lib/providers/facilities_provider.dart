import 'package:flutter/material.dart';
import 'package:untitled/models/facility.dart';
import 'package:untitled/services/facilities_api.dart';

enum FacilitiesUIsStates {
  initial,
  loading,
  success,
  failed;
}

class FacilitiesProvider extends ChangeNotifier {
  FacilitiesUIsStates state = FacilitiesUIsStates.initial;

  List<Facilities> facilities = [];
  static final FacilitiesProvider facilitiesProvider =
      FacilitiesProvider._singleton();
  FacilitiesProvider._singleton();

  factory FacilitiesProvider() {
    return facilitiesProvider;
  }

  Future getFacilities() async {
    state = FacilitiesUIsStates.loading;
    notifyListeners();
    facilities = await FacilitiesApi().getFacilities();
    state = FacilitiesUIsStates.success;
    notifyListeners();
  }
}
