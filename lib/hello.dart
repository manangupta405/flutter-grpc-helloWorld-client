import 'package:grpc/grpc.dart';
import 'package:helloWorld/service.pb.dart';
import 'package:helloWorld/service.pbgrpc.dart';
import 'package:helloWorld/service.pbgrpc.dart';
import 'dart:convert';

import 'grpc_commons.dart';

class HelloService {
  static Message msg;
  static Future<Message> SayHello() async {
    var client = HelloClient(GrpcClientSingleton().client);
    msg = await client.sayHello(Message()..body = "");
    print(msg.body);
    return msg;
  }
}
