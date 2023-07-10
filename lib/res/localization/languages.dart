import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Email',
          'password_hint':'Password',
          'internet_exception':"We're unable to show result.\nPlease check your data\nconnection.",
          'general_exception':"We're unable to process you request. \nPlease try again.",
          'welcome_back':"Welcome\nBack",
          'login':"Login",
        },
        'bn_BD': {
          'email_hint': 'এন্টার ইমেইল',
          'internet_exception':"আমরা ফলাফল দেখাতে অক্ষম.\n আপনার ডেটা সংযোগ \nপরীক্ষা করুন"
        },
      };
}
