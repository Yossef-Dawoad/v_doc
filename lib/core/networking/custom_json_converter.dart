import 'dart:convert';

import 'package:chopper/chopper.dart';

class JsonToObjectConverter extends JsonConverter {
  final Map<Type, Function> objectToJsonFactoryMap;

  const JsonToObjectConverter(this.objectToJsonFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.copyWith<BodyType>(
      body: fromJsonData<BodyType, InnerType>(
        response.body,
        objectToJsonFactoryMap[InnerType]!,
      ),
    );
  }

  T fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = json.decode(jsonData);

    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }

    return jsonParser(jsonMap);
  }
}
