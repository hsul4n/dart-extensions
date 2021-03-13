import 'package:connectivity/connectivity.dart';

extension ConnectivityResultExtension on ConnectivityResult {
  bool get isConnected => this != ConnectivityResult.none;
  bool get isOffline => !isConnected;
  bool get isMobile => this == ConnectivityResult.mobile;
  bool get isWifi => this == ConnectivityResult.wifi;
}
