import 'package:stacked/stacked.dart';

class DesktopViewModel extends BaseViewModel{


  bool _firstNameSuffix = false;
  bool get firstNameSuffix => _firstNameSuffix;

  bool _lastNameSuffix = false;
  bool get lastNameSuffix => _lastNameSuffix;

  bool _emailSuffix = false;
  bool get emailSuffix => _emailSuffix;

  bool _passwordSuffix = false;
  bool get passwordSuffix => _passwordSuffix;

  bool isValidEmail(String email) {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }

  void showFirstNameSuffixIcon(bool value){
    _firstNameSuffix = value;
    notifyListeners();
  }
  void showLastNameSuffixIcon(bool value){
    _lastNameSuffix = value;
    notifyListeners();
  }
  void showEmailSuffixIcon(bool value){
    _emailSuffix = value;
    notifyListeners();
  }
  void showPasswordSuffixIcon(bool value){
    _passwordSuffix = value;
    notifyListeners();
  }


}
