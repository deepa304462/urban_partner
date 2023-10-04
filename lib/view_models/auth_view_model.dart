

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../repository/auth_repository.dart';
import '../routes/app_routes.dart';
import '../core/utils/utils.dart';

class AuthViewModel with ChangeNotifier{

  final _myRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  bool _signUpLoading = false;
  bool get signUpLoading => _signUpLoading;

  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value){
    _signUpLoading = value;
    notifyListeners();
  }

  Future<void> signUpApi(dynamic data , BuildContext context) async{
    setSignUpLoading(true);
    _myRepo.signUpApi(data).then((value) {
      setSignUpLoading(false);
      Utils.flushBarErrorMassage('SignUp successfully', context);
      Navigator.pushNamed(context, AppRoutes.otpScreen);
      if(kDebugMode){
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setSignUpLoading(false);
      if(kDebugMode){
        Utils.flushBarErrorMassage(error.toString(), context);
        print(error.toString());
      }
    });
  }
}