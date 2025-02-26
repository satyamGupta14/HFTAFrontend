import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Details Group Code

class DetailsGroup {
  static String getBaseUrl() => 'https://api.liveview.buildint.co';
  static Map<String, String> headers = {};
  static GetuserHFTACall getuserHFTACall = GetuserHFTACall();
  static ApplyAttendanceCall applyAttendanceCall = ApplyAttendanceCall();
  static GetAttendancesCall getAttendancesCall = GetAttendancesCall();
}

class GetuserHFTACall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = DetailsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getuserHFTA',
      apiUrl: '${baseUrl}/getHFTA/${username}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApplyAttendanceCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? days = '',
    String? loaction = '',
    String? time = '',
    String? decrptions = '',
    String? attandanceStatus = '1',
  }) async {
    final baseUrl = DetailsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
    "Username": "${escapeStringForJson(username)}",
    "Days": "${escapeStringForJson(days)}",
    "Time": "${escapeStringForJson(time)}",
    "Loaction": "${escapeStringForJson(loaction)}",
    "Decrptions": "${escapeStringForJson(decrptions)}",
    "AttandanceStatus": ${escapeStringForJson(attandanceStatus)}
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'applyAttendance',
      apiUrl: '${baseUrl}/Attendance',
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

class GetAttendancesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = DetailsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetAttendances',
      apiUrl: '${baseUrl}/Attendances',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Details Group Code

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Username": "${escapeStringForJson(username)}",
"Password":"${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://api.liveview.buildint.co/login',
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

class CreateUserCall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? middleName = '',
    String? lastName = '',
    String? currentBelt = '',
    String? emailID = '',
    String? contact = '',
    String? alternativeContact = '',
    String? guardianName = '',
    String? address = '',
    String? gender = '',
    String? dateOfJoining = '',
    String? password = '',
    String? role = '',
    String? username = '',
  }) async {
    final ffApiRequestBody = '''
{
    "FirstName": "${escapeStringForJson(firstName)}", 
    "MiddleName": "${escapeStringForJson(middleName)}",
    "LastName": "${escapeStringForJson(lastName)}",
    "CurrentBelt": "${escapeStringForJson(currentBelt)}",
    "EmailID": "${escapeStringForJson(emailID)}",
    "Contact": "${escapeStringForJson(contact)}",
    "AlternativeContact": "${escapeStringForJson(alternativeContact)}",
    "GuardianName": "${escapeStringForJson(guardianName)}",
    "Address": "${escapeStringForJson(address)}",
    "Gender": "${escapeStringForJson(gender)}",
    "DateOfJoining": "${escapeStringForJson(dateOfJoining)}",
    "Password": "${escapeStringForJson(password)}",
    "Role": "${escapeStringForJson(role)}",
    "Username": "${escapeStringForJson(username)}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create User',
      apiUrl: 'https://api.liveview.buildint.co/createHFTA',
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
