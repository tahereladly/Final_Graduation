import 'package:flutter/material.dart';
import 'package:Glovy/helpers/error/error_handler.dart';
import 'package:Glovy/helpers/network_services.dart';
import 'package:Glovy/injection_container.dart';

import '../../Models/doctors/doctor_response.dart';

enum DoctorsStatus {initial, loading, failure, loaded}

class DoctorsProvider extends ChangeNotifier{
  DoctorsStatus _status = DoctorsStatus.initial;
  DoctorsStatus get status => _status;

  late String? errorMessage;

  late List<DoctorResponse> _doctors;
  List<DoctorResponse> get doctors => _doctors;

  void getDoctors() async{
    _status = DoctorsStatus.loading;
    notifyListeners();

    try{
      final result = await injector<ApiService>().getDoctors();
      _doctors = result.data;
      _status = DoctorsStatus.loaded;
      notifyListeners();

    }catch (error){
      errorMessage = ErrorHandler.handle(error).apiErrorModel.message;
      _status = DoctorsStatus.failure;
      notifyListeners();

      resetState();
    }
  }


  void resetState() {
    _status = DoctorsStatus.initial;
    errorMessage = null;
    notifyListeners();
  }

}