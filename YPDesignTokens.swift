// YPDesignTokens.swift
// 鱼泡直聘 Design System — iOS Design Tokens
// Auto-generated from DESIGN.md v2.1.0
// Usage: import this file into your Xcode project

import UIKit
import SwiftUI

// MARK: - Color Tokens

struct YPColors {

    // MARK: Primary
    static let primaryDefault = UIColor(hex: "#0092FF")
    static let primaryLight = UIColor(hex: "#E0F3FF")
    static let primaryDisabled = UIColor(hex: "#99D3FF")

    // MARK: Brand
    static let brandBlue = UIColor(hex: "#1A83FF")
    static let brandYellow = UIColor(hex: "#FECF05")

    // MARK: Background
    static let bgPrimary = UIColor(hex: "#FFFFFF")
    static let bgSecondary = UIColor(hex: "#F5F6FA")
    static let bgInput = UIColor(hex: "#F5F7FC")

    // MARK: Semantic — Danger
    static let dangerDefault = UIColor(hex: "#E8362E")
    static let dangerLight = UIColor(hex: "#FFEBEC")

    // MARK: Semantic — Success
    static let successDefault = UIColor(hex: "#06B578")
    static let successLight = UIColor(hex: "#DFF2EC")

    // MARK: Semantic — Warning
    static let warningDefault = UIColor(hex: "#FF8904")
    static let warningLight = UIColor(hex: "#FFEFDE")

    // MARK: Semantic — Info
    static let infoDefault = UIColor(hex: "#00CBFF")
    static let infoLight = UIColor(hex: "#C4EDF7")

    // MARK: Border
    static let borderDivider = UIColor(hex: "#E9EDF3")

    // MARK: Text
    static let textPrimary = UIColor.black.withAlphaComponent(0.85)
    static let textSecondary = UIColor.black.withAlphaComponent(0.65)
    static let textTertiary = UIColor.black.withAlphaComponent(0.45)
    static let textPlaceholder = UIColor.black.withAlphaComponent(0.45)
    static let textDisabled = UIColor.black.withAlphaComponent(0.25)

    // MARK: Overlay
    static let overlayMask = UIColor.black.withAlphaComponent(0.70)
}

// MARK: - Dark Theme Colors

struct YPDarkColors {
    static let primaryDefault = UIColor(hex: "#149AFF")
    static let primaryLight = UIColor(hex: "#1D2A3F")
    static let primaryDisabled = UIColor(hex: "#2B394F")
    static let bgPrimary = UIColor(hex: "#1D1D1F")
    static let bgSecondary = UIColor(hex: "#131314")
    static let bgInput = UIColor(hex: "#2E2E31")
    static let dangerDefault = UIColor(hex: "#FF5F5F")
    static let dangerLight = UIColor(hex: "#3F2727")
    static let successDefault = UIColor(hex: "#44B138")
    static let successLight = UIColor(hex: "#1E2C1C")
    static let warningDefault = UIColor(hex: "#EB8F26")
    static let warningLight = UIColor(hex: "#422B10")
    static let infoDefault = UIColor(hex: "#43B3DE")
    static let infoLight = UIColor(hex: "#11303C")
    static let borderDivider = UIColor(hex: "#303033")
    static let textPrimary = UIColor.white.withAlphaComponent(0.85)
    static let textSecondary = UIColor.white.withAlphaComponent(0.65)
    static let textTertiary = UIColor.white.withAlphaComponent(0.45)
    static let textPlaceholder = UIColor.white.withAlphaComponent(0.45)
    static let textDisabled = UIColor.white.withAlphaComponent(0.25)
    static let overlayMask = UIColor.black.withAlphaComponent(0.80)
}


// MARK: - Font Size Tokens

struct YPFontSize {
    static let xs: CGFloat = 10       // 极小标注、角标
    static let xsPlus: CGFloat = 11   // 辅助信息
    static let sm: CGFloat = 12       // 说明文字、标签
    static let smPlus: CGFloat = 13   // 次要正文
    static let base: CGFloat = 14     // 正文（最常用）
    static let basePlus: CGFloat = 15 // 正文（稍大）
    static let md: CGFloat = 16       // 副标题、按钮文字
    static let lg: CGFloat = 17       // 标题
    static let xl: CGFloat = 19       // 大标题
    static let xxl: CGFloat = 21      // 页面主标题
    static let xxxl: CGFloat = 23     // 突出数字
    static let xxxxl: CGFloat = 25    // 大展示数字
    static let xxxxxl: CGFloat = 27   // 超大展示数字
}

// MARK: - Font Weight Tokens

struct YPFontWeight {
    static let regular = UIFont.Weight.regular     // 400
    static let medium = UIFont.Weight.medium       // 500
    static let semibold = UIFont.Weight.semibold   // 600
    static let bold = UIFont.Weight.bold           // 700
}

// MARK: - Spacing Tokens (4px modular scale)

struct YPSpacing {
    static let none: CGFloat = 0
    static let xxs: CGFloat = 2
    static let xs: CGFloat = 4
    static let xsPlus: CGFloat = 6
    static let sm: CGFloat = 8
    static let md: CGFloat = 12
    static let lg: CGFloat = 16
    static let xl: CGFloat = 20
    static let xxl: CGFloat = 24
    static let xxxl: CGFloat = 32
}

// MARK: - Border Radius Tokens

struct YPRadius {
    static let xs: CGFloat = 4       // 小标签、角标
    static let icon: CGFloat = 5     // App 图标
    static let sm: CGFloat = 6       // 小卡片
    static let md: CGFloat = 8       // 常规卡片、按钮
    static let lg: CGFloat = 12      // 中等卡片
    static let xl: CGFloat = 16      // 大卡片、弹窗
    static let xxl: CGFloat = 20     // Bottom Sheet
    static let xxxl: CGFloat = 24    // 超大圆角
    static let full: CGFloat = 999   // 胶囊形
}

// MARK: - Shadow Tokens

struct YPShadow {
    static func sm() -> (color: UIColor, offset: CGSize, radius: CGFloat) {
        (UIColor.black.withAlphaComponent(0.08), CGSize(width: 0, height: 1), 4)
    }
    static func md() -> (color: UIColor, offset: CGSize, radius: CGFloat) {
        (UIColor.black.withAlphaComponent(0.12), CGSize(width: 0, height: 4), 12)
    }
    static func lg() -> (color: UIColor, offset: CGSize, radius: CGFloat) {
        (UIColor.black.withAlphaComponent(0.16), CGSize(width: 0, height: 8), 24)
    }
    static func top() -> (color: UIColor, offset: CGSize, radius: CGFloat) {
        (UIColor.black.withAlphaComponent(0.06), CGSize(width: 0, height: -2), 8)
    }
}

// MARK: - Opacity Tokens

struct YPOpacity {
    static let image: CGFloat = 1.0
    static let imageDark: CGFloat = 0.9
    static let disabled: CGFloat = 0.4
    static let pressed: CGFloat = 0.7
}

// MARK: - Stroke Tokens

struct YPStroke {
    static let divider: CGFloat = 0.5
    static let border: CGFloat = 1.0
}

// MARK: - Icon Size Tokens

struct YPIconSize {
    static let xs: CGFloat = 12
    static let sm: CGFloat = 16
    static let md: CGFloat = 24
    static let lg: CGFloat = 32
    static let xl: CGFloat = 48
}

// MARK: - Motion Tokens

struct YPMotion {
    static let durationInstant: TimeInterval = 0.1
    static let durationFast: TimeInterval = 0.2
    static let durationNormal: TimeInterval = 0.3
    static let durationSlow: TimeInterval = 0.5
}

// MARK: - UIColor Hex Extension

extension UIColor {
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: 1.0
        )
    }
}