//AppException
//For example, if you encounter certain errors or exceptional conditions in your Flutter code,
// you can throw instances of AppException with relevant messages and prefixes.
class AppException implements Exception{
  final messege;
  final prefix;

  AppException({this.messege,this.prefix});

  String toString(){
    return '$messege$prefix';
  }
}

//InternetException inherits the properties and methods of AppException.
//If no message is provided, it defaults to 'No Internet'.for Super
class InternetException extends AppException{
  InternetException([String?messege]): super(messege: 'No Internet');
}

class RequestTimeout extends AppException{
  RequestTimeout([String?messege]): super(messege: 'Request Time Out');
}

class ServerException extends AppException{
  ServerException([String?messege]): super(messege: 'Internet Server Error');
}
class InvalidUrlException extends AppException{
  InvalidUrlException([String?messege]): super(messege: 'Invalid Url exception');
}
class FetchdataException extends AppException{
  FetchdataException([String?messege]): super(messege: 'Loading .......');
}