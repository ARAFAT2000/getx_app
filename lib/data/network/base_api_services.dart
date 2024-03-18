// Abstract classes are useful when you want to define a common interface or
// behavior that should be shared among multiple related classes
// Abstract classes cannot be instantiated directly;
// instead, they serve as a blueprint for other classes to inherit from.

abstract class BaseApiServices{

Future<dynamic>getApi(String url);
Future<dynamic>postApi(dynamic data,String url);
}