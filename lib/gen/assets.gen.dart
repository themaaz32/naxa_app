/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsPngsGen {
  const $AssetsPngsGen();

  /// File path: assets/pngs/locker-dynamic-gradient.png
  AssetGenImage get lockerDynamicGradient =>
      const AssetGenImage('assets/pngs/locker-dynamic-gradient.png');

  /// File path: assets/pngs/pencil-dynamic-gradient.png
  AssetGenImage get pencilDynamicGradient =>
      const AssetGenImage('assets/pngs/pencil-dynamic-gradient.png');
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  $AssetsSvgsIconsGen get icons => const $AssetsSvgsIconsGen();

  /// File path: assets/svgs/logo_black.svg
  String get logoBlack => 'assets/svgs/logo_black.svg';

  /// File path: assets/svgs/logo_white.svg
  String get logoWhite => 'assets/svgs/logo_white.svg';
}

class $AssetsSvgsIconsGen {
  const $AssetsSvgsIconsGen();

  /// File path: assets/svgs/icons/ic_add_document.svg
  String get icAddDocument => 'assets/svgs/icons/ic_add_document.svg';

  /// File path: assets/svgs/icons/ic_consulting.svg
  String get icConsulting => 'assets/svgs/icons/ic_consulting.svg';

  /// File path: assets/svgs/icons/ic_deposit.svg
  String get icDeposit => 'assets/svgs/icons/ic_deposit.svg';

  /// File path: assets/svgs/icons/ic_menu_dotted.svg
  String get icMenuDotted => 'assets/svgs/icons/ic_menu_dotted.svg';

  /// File path: assets/svgs/icons/ic_pay_services.svg
  String get icPayServices => 'assets/svgs/icons/ic_pay_services.svg';

  /// File path: assets/svgs/icons/ic_transfer.svg
  String get icTransfer => 'assets/svgs/icons/ic_transfer.svg';
}

class Assets {
  Assets._();

  static const $AssetsPngsGen pngs = $AssetsPngsGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
