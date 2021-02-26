/* Options:
Date: 2021-02-26 13:11:53
Version: 5.105
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: https://localhost:5010

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
//DefaultImports: package:servicestack/servicestack.dart
*/

import 'package:servicestack/servicestack.dart';

class HelloResponse implements IConvertible
{
    String result;

    HelloResponse({this.result});
    HelloResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

// @Route("/hello")
// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>, IConvertible
{
    String name;

    Hello({this.name});
    Hello.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "Hello"; }
    TypeContext context = _ctx;
}

TypeContext _ctx = new TypeContext(library: 'localhost', types: <String, TypeInfo> {
    'HelloResponse': new TypeInfo(TypeOf.Class, create:() => new HelloResponse()),
    'Hello': new TypeInfo(TypeOf.Class, create:() => new Hello()),
});

