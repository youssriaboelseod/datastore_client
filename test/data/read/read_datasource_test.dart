import 'dart:convert';
import 'dart:io';

import 'package:datastore_client/core/i_list.dart';
import 'package:datastore_client/data/read/read_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

void main() {
  test("ReadDataSource should return an IList on success", () async {
    final client = MockClientSuccess();
    final dataSource = ReadDataSource(client);

    final actual = await dataSource.listEntitiesOfKind("any");
    final expected = IList(const [entityFixture]);

    expect(actual, expected);
  });

  test("ReadDataSource should return an Exception if ResponseCode not 200",
      () async {
    final client = MockClientException();
    final dataSource = ReadDataSource(client);

    final call = dataSource.listEntitiesOfKind;
    const expected = SocketException("Could not connect to server");

    expect(() => call("any"), throwsA(expected));
  });
}

// Mocks and Fixtures
class MockClientSuccess extends Fake implements http.Client {
  @override
  Future<http.Response> post(
    dynamic url, {
    Map<String, String> headers,
    dynamic body,
    Encoding encoding,
  }) async {
    return http.Response(responseBody, 200);
  }
}

class MockClientException extends Fake implements http.Client {
  @override
  Future<http.Response> post(
    dynamic url, {
    Map<String, String> headers,
    dynamic body,
    Encoding encoding,
  }) async {
    return http.Response("body", 500);
  }
}

const entityFixture = <String, dynamic>{
  "entity": {
    "key": {
      "partitionId": {"projectId": "celbuxuat", "namespaceId": "ns69"},
      "path": [
        {"kind": "person", "id": "1"}
      ]
    },
    "properties": {
      "name": {"stringValue": "ferdz"},
      "position": {"integerValue": "69"}
    }
  },
  "cursor": "CiYSIGoJY2VsYnV4dWF0cgwLEgZwZXJzb24YAQyiAQRuczY5GAAgAA==",
  "version": "2"
};

const responseBody = '''
  {
    "batch": {
      "entityResultType": "FULL",
      "entityResults": [
        {
          "entity": {
            "key": {
              "partitionId": {
                "projectId": "celbuxuat",
                "namespaceId": "ns69"
              },
              "path": [
                {"kind": "person", "id": "1"}
              ]
            },
            "properties": {
              "name": {"stringValue": "ferdz"},
              "position": {"integerValue": "69"}
            }
          },
          "cursor": "CiYSIGoJY2VsYnV4dWF0cgwLEgZwZXJzb24YAQyiAQRuczY5GAAgAA==",
          "version": "2"
        }
      ],
      "endCursor": "CiYSIGoJY2VsYnV4dWF0cgwLEgZwZXJzb24YBAyiAQRuczY5GAAgAA==",
      "moreResults": "MORE_RESULTS_AFTER_LIMIT"
    }
  }''';
