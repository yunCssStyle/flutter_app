import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: constant_identifier_names
enum NetworkStatus { NotDetermined, isConnected, isDisonnected }

final networkProviders = StateNotifierProvider((ref) {
  return NetworkNotifier();
});

class NetworkNotifier extends StateNotifier<NetworkStatus> {
  StreamController<ConnectivityResult> controller =
      StreamController<ConnectivityResult>();

  NetworkStatus? lastResult;
  NetworkStatus? newState;

  NetworkNotifier() : super(NetworkStatus.isConnected) {
    if (state == NetworkStatus.isConnected) {
      lastResult = NetworkStatus.isConnected;
    } else {
      lastResult = NetworkStatus.isDisonnected;
    }
    lastResult = NetworkStatus.NotDetermined;
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        newState = NetworkStatus.isConnected;
      } else {
        newState = NetworkStatus.isDisonnected;
      }
      if (newState != lastResult) {
        state = newState!;
        lastResult = newState;
      }
    });
  }

  void ckenectivityInit() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    ckenectivityCheck(connectivityResult);
  }

  void ckenectivityCheck(connectivityResult) async {
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      state = NetworkStatus.isConnected;
    } else {
      state = NetworkStatus.isDisonnected;
    }
  }
}
