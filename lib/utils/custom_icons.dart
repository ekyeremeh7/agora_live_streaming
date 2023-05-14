import 'package:flutter/foundation.dart';

@immutable
class _CustomIconData {
  const _CustomIconData(this._name, this.description);

  static const String _kAssetPath = "assets/icons";
  final String _name;

  String get name => "$_kAssetPath/$_name";
  final String description;
}

@immutable
class CustomIcons {
  const CustomIcons._();

  static const example = _CustomIconData("example.svg", 'example');
   }
