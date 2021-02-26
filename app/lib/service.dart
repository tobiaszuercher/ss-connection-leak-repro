import 'dart:async';

import 'package:app/dtos.dart';
import 'package:servicestack/client.dart';
import 'package:servicestack/servicestack.dart';

class Service {

  IServiceClient client;

  Service() {
    client = ClientFactory.createWith(ClientOptions(baseUrl: "https://localhost:5010", ignoreCert: true));

    Timer.periodic(Duration(seconds: 2),(_) {
      _runClient();
    });
  }


  _runClient() async {
    var response = await client.get(Hello());
  }
}