// ignore_for_file: public_member_api_docs, sort_constructors_first
class CustomPlatformExc implements Exception {
  final String code;
  CustomPlatformExc({
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
