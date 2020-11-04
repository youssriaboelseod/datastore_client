import 'dart:convert';
import 'dart:io';

import 'package:datastore_client/core/i_list.dart';
import 'package:datastore_client/data/read/repository.dart';
import 'package:datastore_client/domain/read/entities/read_response.dart';
import 'package:http/http.dart' as http;

class ReadDataSource implements IReadDataSource {
  final http.Client client;

  ReadDataSource(this.client);

  @override
  Future<IList<Map<String, dynamic>>> listEntitiesOfKind(String kind) async {
    const baseUrl = "http://localhost:8081";
    const projectID = "celbuxuat";
    const nameSpace = "ns69";

    const url = "$baseUrl/v1/projects/$projectID:runQuery";

    const body = {
      "partitionId": {
        "projectId": projectID,
        "namespaceId": nameSpace,
      },
      "readOptions": {"readConsistency": "STRONG"},
      "query": {
        "projection": <dynamic>[],
        "kind": [
          {"name": "person"}
        ],
        "order": <dynamic>[],
        "distinctOn": <dynamic>[],
        "startCursor": "",
        "endCursor": ""
      }
    };

    final headers = {
      "content-type": "application/json",
    };

    final payload = jsonEncode(body);

    final response = await client.post(
      url,
      body: payload,
      headers: headers,
    );

    print(response.body);

    if (response.statusCode != 200) {
      throw const SocketException("Could not connect to DB");
    }

    final responseBody = jsonDecode(response.body) as Map<String, dynamic>;

    final readResponse =
        ReadResponse.fromJson(responseBody["batch"] as Map<String, dynamic>);

    return IList(readResponse.entityResults);
  }
}
