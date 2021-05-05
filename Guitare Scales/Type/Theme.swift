//
// Created by Stephane Bressani on 02.05.21.
//

import Foundation
import SwiftUI

/**
 Theme of application
 */
enum Theme {
    case Light
    case Dark
}

func colorSchemeToTheme(colorScheme: ColorScheme) -> Theme {
    if colorScheme == ColorScheme.dark {
        return Theme.Dark
    } else {
        return Theme.Light
    }
}