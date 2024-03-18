

import 'package:get/get.dart';

class LanguageLocalization extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'Email_hint': 'Email',
      'Internet_exception': 'We are unable to show results \nPlease your data\nconnection',
      'General_exception': 'We are unable to process your request\nPlease try again',
      'Welcome_back' : 'Welcome\nBack',
      'log_in' : 'Log In',
      'email_hint' : 'Enter email',
      'password_hint' : 'Enter password',
    },
    'bn_BD': {
      'Email_hint': 'ইমেইল প্রদান করুন',


    }
  };
}