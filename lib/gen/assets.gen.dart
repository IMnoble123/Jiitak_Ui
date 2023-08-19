/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Filter_icon.png
  AssetGenImage get filterIcon =>
      const AssetGenImage('assets/icons/Filter_icon.png');

  /// File path: assets/icons/account.png
  AssetGenImage get account => const AssetGenImage('assets/icons/account.png');

  /// File path: assets/icons/chat_icon.png
  AssetGenImage get chatIcon =>
      const AssetGenImage('assets/icons/chat_icon.png');

  /// File path: assets/icons/fav_icon.png
  AssetGenImage get favIcon => const AssetGenImage('assets/icons/fav_icon.png');

  /// File path: assets/icons/management_job.png
  AssetGenImage get managementJob =>
      const AssetGenImage('assets/icons/management_job.png');

  /// File path: assets/icons/minus_icon.png
  AssetGenImage get minusIcon =>
      const AssetGenImage('assets/icons/minus_icon.png');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/scan_icon.png
  AssetGenImage get scanIcon =>
      const AssetGenImage('assets/icons/scan_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        filterIcon,
        account,
        chatIcon,
        favIcon,
        managementJob,
        minusIcon,
        notification,
        scanIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/add img.png
  AssetGenImage get addImg => const AssetGenImage('assets/images/add img.png');

  /// File path: assets/images/cimagefive.png
  AssetGenImage get cimagefive =>
      const AssetGenImage('assets/images/cimagefive.png');

  /// File path: assets/images/cimagefour.png
  AssetGenImage get cimagefour =>
      const AssetGenImage('assets/images/cimagefour.png');

  /// File path: assets/images/cimagethree.png
  AssetGenImage get cimagethree =>
      const AssetGenImage('assets/images/cimagethree.png');

  /// File path: assets/images/cimgeone.png
  AssetGenImage get cimgeone =>
      const AssetGenImage('assets/images/cimgeone.png');

  /// File path: assets/images/cimgseven.png
  AssetGenImage get cimgseven =>
      const AssetGenImage('assets/images/cimgseven.png');

  /// File path: assets/images/cimgsix.png
  AssetGenImage get cimgsix => const AssetGenImage('assets/images/cimgsix.png');

  /// File path: assets/images/lovered.png
  AssetGenImage get lovered => const AssetGenImage('assets/images/lovered.png');

  /// File path: assets/images/mapimg.png
  AssetGenImage get mapimg => const AssetGenImage('assets/images/mapimg.png');

  /// File path: assets/images/partimeone.png
  AssetGenImage get partimeone =>
      const AssetGenImage('assets/images/partimeone.png');

  /// File path: assets/images/partimetwo.png
  AssetGenImage get partimetwo =>
      const AssetGenImage('assets/images/partimetwo.png');

  /// File path: assets/images/starsimg.png
  AssetGenImage get starsimg =>
      const AssetGenImage('assets/images/starsimg.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        addImg,
        cimagefive,
        cimagefour,
        cimagethree,
        cimgeone,
        cimgseven,
        cimgsix,
        lovered,
        mapimg,
        partimeone,
        partimetwo,
        starsimg
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
