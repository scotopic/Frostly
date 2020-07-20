//
//  Frost.swift
//
//  Created by Clarko on 7/19/20.
//
//  A SwiftUI representation of UIVisualEffectView
//  and UIBlurEffect, that handles mostly like a
//  SwiftUI Color view. Use it as a background.
//
//  Comes with styles like Frost.thin and Frost.thick
//

import SwiftUI

struct Frost: UIViewRepresentable, Hashable {
    // Adaptive UI style, matching the system toolbars
    static var chrome: Frost {
        Frost(style: .systemChromeMaterial)
    }

    // Adaptive UI styles, by thickness
    static var ultraThin: Frost {
        Frost(style: .systemUltraThinMaterial)
    }

    static var thin: Frost {
        Frost(style: .systemThinMaterial)
    }

    static var normal: Frost {
        Frost(style: .systemMaterial)
    }

    static var thick: Frost {
        Frost(style: .systemThickMaterial)
    }

    // Content styles, by brightness
    static var lighter: Frost {
        Frost(style: .extraLight)
    }

    static var neutral: Frost {
        Frost(style: .light)
    }

    static var darker: Frost {
        Frost(style: .dark)
    }

    // Implementation
    var style: UIBlurEffect.Style = .systemChromeMaterial

    func makeUIView(context: Context) -> UIVisualEffectView {
        UIVisualEffectView()
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
