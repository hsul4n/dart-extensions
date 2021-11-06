import 'package:connectivity/connectivity.dart';

extension ConnectivityResultExtension on ConnectivityResult {
  bool get isConnected => this != null && this != ConnectivityResult.none;
  bool get isOffline => !isConnected;
  bool get isMobile => this != null && this == ConnectivityResult.mobile;
  bool get isWifi => this != null && this == ConnectivityResult.wifi;
}
