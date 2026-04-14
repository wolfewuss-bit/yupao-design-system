/// yp_design_tokens.dart
/// 鱼泡直聘 Design System — Flutter Design Tokens
/// Auto-generated from DESIGN.md v2.1.0
/// Usage: import 'package:your_app/yp_design_tokens.dart';

import 'package:flutter/material.dart';

// ==================== Color Tokens ====================

class YPColors {
  YPColors._();

  // Primary
  static const Color primaryDefault = Color(0xFF0092FF);
  static const Color primaryLight = Color(0xFFE0F3FF);
  static const Color primaryDisabled = Color(0xFF99D3FF);

  // Brand
  static const Color brandBlue = Color(0xFF1A83FF);
  static const Color brandYellow = Color(0xFFFECF05);

  // Background
  static const Color bgPrimary = Color(0xFFFFFFFF);
  static const Color bgSecondary = Color(0xFFF5F6FA);
  static const Color bgInput = Color(0xFFF5F7FC);

  // Semantic: Danger
  static const Color dangerDefault = Color(0xFFE8362E);
  static const Color dangerLight = Color(0xFFFFEBEC);

  // Semantic: Success
  static const Color successDefault = Color(0xFF06B578);
  static const Color successLight = Color(0xFFDFF2EC);

  // Semantic: Warning
  static const Color warningDefault = Color(0xFFFF8904);
  static const Color warningLight = Color(0xFFFFEFDE);

  // Semantic: Info
  static const Color infoDefault = Color(0xFF00CBFF);
  static const Color infoLight = Color(0xFFC4EDF7);

  // Border
  static const Color borderDivider = Color(0xFFE9EDF3);

  // Text
  static const Color textPrimary = Color(0xD9000000);   // black 85%
  static const Color textSecondary = Color(0xA6000000);  // black 65%
  static const Color textTertiary = Color(0x73000000);   // black 45%
  static const Color textPlaceholder = Color(0x73000000); // black 45%
  static const Color textDisabled = Color(0x40000000);   // black 25%

  // Overlay
  static const Color overlayMask = Color(0xB3000000);    // black 70%
}


// ==================== Dark Theme Colors ====================

class YPDarkColors {
  YPDarkColors._();

  static const Color primaryDefault = Color(0xFF149AFF);
  static const Color primaryLight = Color(0xFF1D2A3F);
  static const Color primaryDisabled = Color(0xFF2B394F);
  static const Color bgPrimary = Color(0xFF1D1D1F);
  static const Color bgSecondary = Color(0xFF131314);
  static const Color bgInput = Color(0xFF2E2E31);
  static const Color dangerDefault = Color(0xFFFF5F5F);
  static const Color dangerLight = Color(0xFF3F2727);
  static const Color successDefault = Color(0xFF44B138);
  static const Color successLight = Color(0xFF1E2C1C);
  static const Color warningDefault = Color(0xFFEB8F26);
  static const Color warningLight = Color(0xFF422B10);
  static const Color infoDefault = Color(0xFF43B3DE);
  static const Color infoLight = Color(0xFF11303C);
  static const Color borderDivider = Color(0xFF303033);
  static const Color textPrimary = Color(0xD9FFFFFF);
  static const Color textSecondary = Color(0xA6FFFFFF);
  static const Color textTertiary = Color(0x73FFFFFF);
  static const Color textPlaceholder = Color(0x73FFFFFF);
  static const Color textDisabled = Color(0x40FFFFFF);
  static const Color overlayMask = Color(0xCC000000);
}

// ==================== Font Size Tokens ====================

class YPFontSize {
  YPFontSize._();

  static const double xs = 10;       // 极小标注、角标
  static const double xsPlus = 11;   // 辅助信息
  static const double sm = 12;       // 说明文字、标签
  static const double smPlus = 13;   // 次要正文
  static const double base = 14;     // 正文（最常用）
  static const double basePlus = 15; // 正文（稍大）
  static const double md = 16;       // 副标题、按钮文字
  static const double lg = 17;       // 标题
  static const double xl = 19;       // 大标题
  static const double xxl = 21;      // 页面主标题
  static const double xxxl = 23;     // 突出数字
  static const double xxxxl = 25;    // 大展示数字
  static const double xxxxxl = 27;   // 超大展示数字
}

// ==================== Spacing Tokens (4px modular scale) ====================

class YPSpacing {
  YPSpacing._();

  static const double none = 0;
  static const double xxs = 2;
  static const double xs = 4;
  static const double xsPlus = 6;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;
}

// ==================== Border Radius Tokens ====================

class YPRadius {
  YPRadius._();

  static const double xs = 4;
  static const double icon = 5;
  static const double sm = 6;
  static const double md = 8;
  static const double lg = 12;
  static const double xl = 16;
  static const double xxl = 20;
  static const double xxxl = 24;
  static const double full = 999;

  static BorderRadius get xsBorder => BorderRadius.circular(xs);
  static BorderRadius get smBorder => BorderRadius.circular(sm);
  static BorderRadius get mdBorder => BorderRadius.circular(md);
  static BorderRadius get lgBorder => BorderRadius.circular(lg);
  static BorderRadius get xlBorder => BorderRadius.circular(xl);
  static BorderRadius get fullBorder => BorderRadius.circular(full);
}

// ==================== Shadow Tokens ====================

class YPShadow {
  YPShadow._();

  static List<BoxShadow> get sm => [
    BoxShadow(color: const Color(0x14000000), offset: const Offset(0, 1), blurRadius: 4),
  ];
  static List<BoxShadow> get md => [
    BoxShadow(color: const Color(0x1F000000), offset: const Offset(0, 4), blurRadius: 12),
  ];
  static List<BoxShadow> get lg => [
    BoxShadow(color: const Color(0x29000000), offset: const Offset(0, 8), blurRadius: 24),
  ];
  static List<BoxShadow> get top => [
    BoxShadow(color: const Color(0x0F000000), offset: const Offset(0, -2), blurRadius: 8),
  ];
}

// ==================== Opacity Tokens ====================

class YPOpacity {
  YPOpacity._();

  static const double image = 1.0;
  static const double imageDark = 0.9;
  static const double disabled = 0.4;
  static const double pressed = 0.7;
}

// ==================== Stroke Tokens ====================

class YPStroke {
  YPStroke._();

  static const double divider = 0.5;
  static const double border = 1.0;
}

// ==================== Icon Size Tokens ====================

class YPIconSize {
  YPIconSize._();

  static const double xs = 12;
  static const double sm = 16;
  static const double md = 24;
  static const double lg = 32;
  static const double xl = 48;
}

// ==================== Motion Duration Tokens ====================

class YPMotion {
  YPMotion._();

  static const Duration instant = Duration(milliseconds: 100);
  static const Duration fast = Duration(milliseconds: 200);
  static const Duration normal = Duration(milliseconds: 300);
  static const Duration slow = Duration(milliseconds: 500);

  static const Curve standard = Curves.easeInOut;
  static const Curve decelerate = Curves.decelerate;
  static const Curve accelerate = Curves.easeIn;
}