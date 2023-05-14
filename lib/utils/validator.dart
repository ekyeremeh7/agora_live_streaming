import 'package:get/get.dart';

class Validator {
  Validator._();

  static String? validateEmail(String? value) {
    if (!value!.trim().isEmail) {
      return 'Please enter a valid email';
    } else {
      return null;
    }
  }

  // Requires a minimum of 8 characters
  static String? validatePassword(String? value) {
    String pattern = r'^.{8,}$';
    RegExp regex = RegExp(pattern);
    if (value!.isEmpty) return "Please enter a password";
    if (!regex.hasMatch(value)) {
      return 'Password length too short';
    } else {
      return null;
    }
  }

  static String? countryValidator(String? value) {
    if (value!.isEmpty) {
      return "Please select a country";
    }
    return null;
  }

  static String? confirmPassword(String? value, String password) {
    if (value!.isEmpty) return "Please confirm password";
    if (value != password) {
      return 'Passwords do not match';
    } else {
      return null;
    }
  }

  static String? fullName(String? value) {
    if (value!.isEmpty) {
      return "Please enter your fullname";
    }
    return null;
  }

  static String? title(String? value) {
    if (value!.isEmpty) {
      return "Please enter title";
    }
    return null;
  }

  static String? description(String? value) {
    if (value!.isEmpty) {
      return "Please enter description";
    }
    return null;
  }

  static String? fullname(String? value) {
    if (value!.isEmpty) {
      return "Please enter your full name";
    }
    return null;
  }

  static String? phoneNumber(String? value) {
    if (value!.isEmpty) {
      return "Please enter your phone number";
    }
    return null;
  }

  static String? workPlace(String? value) {
    if (value!.isEmpty) {
      return "Please enter your work place";
    }
    return null;
  }

  static String? profession(String? value) {
    if (value!.isEmpty) {
      return "Please enter your profession";
    }
    return null;
  }

  static String? username(String? value) {
    if (value!.isEmpty) {
      return "Please enter your username";
    }
    return null;
  }

  static String? comment(String? value) {
    if (value!.isEmpty) {
      return "Please enter a comment to post";
    }
    return null;
  }

  static String? aboutMe(String? value) {
    if (value!.isEmpty) {
      return "Say something about yourself";
    }
    return null;
  }

  static String? addAwards(String? value) {
    if (value!.isEmpty) {
      return "Please add at least An Award";
    }
    return null;
  }

  static String? name(String? value) {
    String pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'Name is not valid';
    } else {
      return null;
    }
  }

  static String? amount(String? value) {
    // String pattern = r'^\d+\.\d{1,2}$';
    // RegExp regex = RegExp(pattern);
    double? parsed = double.tryParse(value!);
    if (parsed == null) {
      return 'Provide a valid amount';
    } else {
      return null;
    }
  }

  static String? noSpace(String? value) {
    String pattern = r'^\S+$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'Cannot be empty';
    } else {
      return null;
    }
  }

  static String? notEmpty(String? value) {
    if (value!.trim().isEmpty) {
      return 'Cannot be empty';
    } else {
      return null;
    }
  }

  static String? mainTitle(String? value) {
    if (value!.isEmpty) {
      return "Please enter Article's main title";
    }
    return null;
  }

  static String? subTitle(String? value) {
    if (value!.isEmpty) {
      return "Please enter Article's sub title";
    }
    return null;
  }

  static String? articleContent(String? value) {
    if (value!.isEmpty) {
      return "Input the Content of your Article";
    }
    return null;
  }

  static String? readTime(String? value) {
    if (value!.isEmpty) {
      return "Please enter approximate read time";
    }
    return null;
  }
}
