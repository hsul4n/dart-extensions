import 'package:flutter/material.dart';

extension AsyncSnapshotExtension on AsyncSnapshot {
  bool get isLoading => connectionState == ConnectionState.waiting;
  bool get isDone => connectionState == ConnectionState.done;
  bool get isActive => connectionState == ConnectionState.active;
  bool get isNaN => connectionState == ConnectionState.none;
}
