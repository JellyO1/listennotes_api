import 'package:path/path.dart';

extension Endpoint on String {
  String endpoint(String endpoint) {
    return url.join(this, endpoint);
  }
}
