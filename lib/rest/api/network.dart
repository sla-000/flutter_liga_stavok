import 'dart:io';

import 'package:http/http.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Network');

class Network {
  Network(this.url);

  final String url;

  /// Throws:
  /// - some Http error
  Future<String> getData() async {
    // Add error handling
    try {
      _log.finest(() => 'getData: Calling uri=$url');

      final Response response = await get(url);

      if (response.statusCode < 400) {
        return response.body;
      } else {
        _log.warning(
            () => 'getData: ${response.statusCode}: ${response.reasonPhrase}');
        throw HttpException('${response.statusCode}: ${response.reasonPhrase}');
      }
    } on Exception catch (error) {
      _log.warning(() => 'getData: error=$error');
      rethrow;
    }
  }
}
