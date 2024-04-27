// ignore_for_file: public_member_api_docs, sort_constructors_first
class CustomFormatExc implements Exception {
  final String code;
  CustomFormatExc({
    required this.code,
  });

   String get message{
    switch(code){
      case '':
      return '';

      default:
      return '';
    }
  }
}
