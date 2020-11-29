import 'dart:async';
import 'dart:io';

import 'package:flutter_liga_stavok/rest/api/busy_flag.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Network');

class Network {
  Network(this.url);

  final String url;

  static final BusyFlag _busy = BusyFlag();

  /// Throws:
  /// - some Http error
  Future<String> getData() async {
    await _busy.waitFree();

    // Add error handling
    try {
      _log.finest(() => 'getData: Calling uri=$url');

      final Response response = await get(url);

      if (response.statusCode == 404) {
        _log.info(() => 'getData: No data, url=$url');
        return null;
      } else if (response.statusCode < 400) {
        return response.body;
      } else {
        _log.warning(
            () => 'getData: url=$url, statusCode=${response.statusCode}'
                ', reasonPhrase=${response.reasonPhrase}');
        throw HttpException('${response.statusCode}: ${response.reasonPhrase}');
      }
    } on Exception catch (error) {
      _log.warning(() => 'getData: error=$error');
      rethrow;
    } finally {
      Timer(const Duration(seconds: 1), () {
        _busy.markFree();
      });
    }
  }
}
