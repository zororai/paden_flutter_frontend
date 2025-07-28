import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://paden.co.zw/api/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.role''',
      ));
  static String? route(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.redirect_url''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? useremail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? userimage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.image''',
      ));
}

class UserregCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? surname = '',
    String? email = '',
    String? password = '',
    String? passwordConfirmation = '',
    String? university = '',
    String? role = '',
  }) async {
    final ffApiRequestBody = '''
{

 "name": "${escapeStringForJson(name)}",
 "surname": "${escapeStringForJson(surname)}",
"email": "${escapeStringForJson(email)}",
"password": "${escapeStringForJson(password)}",
 "password_confirmation": "${escapeStringForJson(passwordConfirmation)}",
"university": "${escapeStringForJson(university)}",
 "role": "${escapeStringForJson(role)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userreg',
      apiUrl: 'https://paden.co.zw/api/useregister',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadpicCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
    String? phone = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadpic',
      apiUrl: 'https://paden.co.zw/api/upload',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'image': image,
        'phone': phone,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegpaymentCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? amount = '',
    String? paymentmethod = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(phone)}",
  "paymentmethod": "${escapeStringForJson(paymentmethod)}",
  "amount": "${escapeStringForJson(amount)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'regpayment',
      apiUrl: 'https://paden.co.zw/api/payment/regpayment',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchCall {
  static Future<ApiCallResponse> call({
    String? location = '',
    String? min = '',
    String? max = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
"keyword": "${escapeStringForJson(location)}",
"min_price": "${escapeStringForJson(min)}",
"max_price": "${escapeStringForJson(max)}"

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Search',
      apiUrl: 'https://paden.co.zw/api/search',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$.results[:].name''',
        true,
      ) as List?;
  static List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? price(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? like(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].like''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fridge(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].Fridge''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? waterTank(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].WaterTank''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? solar(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].Solar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? roommates(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].Roommates''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? wifi(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].wifi''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? room(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].room_image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DirectionpayCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? token = '',
    String? phone = '',
    String? network = '',
    int? amount,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'directionpay',
      apiUrl: 'https://paden.co.zw/api/directions/pay/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PopularCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? id = '',
    String? name = '',
    String? price = '',
    String? wifi = '',
    String? solar = '',
    String? roommates = '',
    String? roomImage = '',
    String? location = '',
    int? like,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'popular',
      apiUrl: 'https://paden.co.zw/api/home/popular',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? poid(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
  static List<int>? like(dynamic response) => (getJsonField(
        response,
        r'''$[:].like''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? solar(dynamic response) => (getJsonField(
        response,
        r'''$[:].Solar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? roommates(dynamic response) => (getJsonField(
        response,
        r'''$[:].Roommates''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? wifi(dynamic response) => (getJsonField(
        response,
        r'''$[:].wifi''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DetailsplaceCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'detailsplace',
      apiUrl: 'https://paden.co.zw/api/homedisplay/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? datalocation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.location''',
      ));
}

class HomeCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'HomeCall',
        'variables': {
          'token': token,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? like(dynamic response) => (getJsonField(
        response,
        r'''$[:].like''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fridge(dynamic response) => (getJsonField(
        response,
        r'''$[:].Fridge''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? water(dynamic response) => (getJsonField(
        response,
        r'''$[:].WaterTank''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? solar(dynamic response) => (getJsonField(
        response,
        r'''$[:].Solar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? redirecturl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.redirect_url''',
      ));
  static List<String>? share(dynamic response) => (getJsonField(
        response,
        r'''$[:].Roommates''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? wifi(dynamic response) => (getJsonField(
        response,
        r'''$[:].wifi''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pic(dynamic response) => (getJsonField(
        response,
        r'''$[:].room_image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? geo(dynamic response) => (getJsonField(
        response,
        r'''$[:].geo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ResetpasswordemailCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resetpasswordemail',
      apiUrl: 'https://paden.co.zw/api/password/email',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LandlordaddpropertyCall {
  static Future<ApiCallResponse> call({
    String? location = '',
    String? discription = '',
    String? number = '',
    String? fridge = '',
    String? bathroom = '',
    String? tank = '',
    String? stove = '',
    String? solar = '',
    String? parking = '',
    String? totalRooms = '',
    String? roommates = '',
    String? boarding = '',
    String? selling = '',
    String? wifi = '',
    String? giza = '',
    String? gender = '',
    String? price = '',
    String? geo = '',
    String? university = '',
    FFUploadedFile? room,
    FFUploadedFile? kitchen,
    FFUploadedFile? toilet,
    FFUploadedFile? out,
    FFUploadedFile? landlord,
    String? titleland = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Landlordaddproperty',
      apiUrl: 'https://paden.co.zw/api/properties',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'room': room,
        'Kitchen': kitchen,
        'Toilet': toilet,
        'out': out,
        'landlord': landlord,
        'location': location,
        'discription': discription,
        'number': number,
        'titleland': titleland,
        'Fridge': fridge,
        'Bathroom': bathroom,
        'Tank': tank,
        'stove': stove,
        'Solar': solar,
        'parking': parking,
        'TotalRooms': totalRooms,
        'Roommates': roommates,
        'Boarding': boarding,
        'Selling': selling,
        'wifi': wifi,
        'giza': giza,
        'Gender': gender,
        'price': price,
        'Geo': geo,
        'University': university,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'list',
      apiUrl: 'https://paden.co.zw/api/myproperties',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? propertiestitle(dynamic response) => (getJsonField(
        response,
        r'''$.properties[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? propertiesid(dynamic response) => (getJsonField(
        response,
        r'''$.properties[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? propertieslocation(dynamic response) => (getJsonField(
        response,
        r'''$.properties[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LandlordUpdatesinglepropertyCall {
  static Future<ApiCallResponse> call({
    String? location = '',
    String? discription = '',
    String? number = '',
    String? price = '',
    FFUploadedFile? room,
    FFUploadedFile? kitchen,
    FFUploadedFile? toilet,
    FFUploadedFile? out,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LandlordUpdatesingleproperty',
      apiUrl: 'https://paden.co.zw/api/properties/',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'location': location,
        'discription': discription,
        'number': number,
        'price': price,
        'room': room,
        'Kitchen': kitchen,
        'Toilet': toilet,
        'out': out,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PropertydirectionsCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Propertydirections',
      apiUrl: 'https://paden.co.zw/api/properties/directions/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? houselocation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.house.location''',
      ));
}

class HomestatusCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Homestatus',
      apiUrl: 'https://paden.co.zw/api/home',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
  static List<String>? location(dynamic response) => (getJsonField(
        response,
        r'''$[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? like(dynamic response) => (getJsonField(
        response,
        r'''$[:].like''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fridge(dynamic response) => (getJsonField(
        response,
        r'''$[:].Fridge''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? waterTank(dynamic response) => (getJsonField(
        response,
        r'''$[:].WaterTank''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? solar(dynamic response) => (getJsonField(
        response,
        r'''$[:].Solar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? roommates(dynamic response) => (getJsonField(
        response,
        r'''$[:].Roommates''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? wifi(dynamic response) => (getJsonField(
        response,
        r'''$[:].wifi''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
