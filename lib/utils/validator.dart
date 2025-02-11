class Validator {
  /*static String? validateEmail(String? value) {
    final regExp = RegExp(RegexConstant.validEmail);
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    } else if (!regExp.hasMatch(value)) {
      return S.current.helpEnterValidEmail;
    } else {
      return null;
    }
  }

  static String? validatePasswordCobra(String? value) {
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    } else if (value.length < 4 || value.length > 5) {
      return S.current.helpPasswordSize;
    } else {
      return null;
    }
  }

  static String? validateUserCobra(String? value) {
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    } else if (value.length < 3 || value.length > 5) {
      return S.current.helpUserSize;
    } else {
      return null;
    }
  }

  static String? validatePassword(String? value) {
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    } else if (value.length < 6) {
      return S.current.helpPasswordAdminSize;
    } else {
      return null;
    }
  }

  static String? validateEmpty(String? value) {
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    }
    return null;
  }

  static String? validateNumeric(String? value) {
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    } else if (num.tryParse(value) == null) {
      return S.current.helpEnterValidNumber;
    } else if (!isNumeric(value)) {
      return S.current.helpEnterValidNumber;
    }
    return null;
  }

  static String? validateNumberDecimal(String? value) {
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    } else if (num.tryParse(value) == null) {
      return S.current.helpEnterValidNumber;
    } else if (!isFloat(value)) {
      return S.current.helpEnterValidNumber;
    }
    return null;
  }

  static String? validatePhone(String? value) {
    final regPhone = RegExp(RegexConstant.isValidPhone);
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    } else if (!regPhone.hasMatch(value)) {
      return S.current.helpEnterValidPhone;
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null) {
      return S.current.fillField;
    } else if (value.isEmpty) {
      return S.current.fillField;
    } else if (isNumeric(value)) {
      return S.current.helpEnterValidName;
    }
    return null;
  }

 static String? validateCity(ModelDropdownButton? value) {
    if (value == null) {
      return 'Por favor seleccione una ciudad';
    } else if (value.value == 'Ciudad') {
      return 'Por favor seleccione una ciudad';
    }
    return null;
  }*/
}
