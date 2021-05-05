//
// Created by Stephane Bressani on 04.05.21.
//

import Foundation

/**
 Note in choice in this app
 */
enum Note {
    case C
    case CSharp
    case D
    case DSharp
    case E
    case F
    case FSharp
    case G
    case GSharp
    case A
    case ASharp
    case B
}

/**
 Convert enum Note to String
 - Parameter enumNote: Scale
 - Parameter swBemol: Bool
 - Returns: String
 */
func noteToString(enumNote: Note, swBemol: Bool) -> String {
    switch (enumNote) {
    case Note.C:
        return "C"
    case Note.CSharp:
        if swBemol {
            return "C#"
        } else {
            return "B♭"
        }
    case Note.D:
        return "D"
    case Note.DSharp:
        if swBemol {
            return "D#"
        } else {
            return "C♭"
        }
    case Note.E:
        return "E"
    case Note.F:
        return "F"
    case Note.FSharp:
        if swBemol {
            return "F#"
        } else {
            return "E♭"
        }
    case Note.G:
        return "G"
    case Note.GSharp:
        if swBemol {
            return "G#"
        } else {
            return "F♭"
        }
    case Note.A:
        return "A"
    case Note.ASharp:
        if swBemol {
            return "A#"
        } else {
            return "G♭"
        }
    case Note.B:
        return "B"
    }
}

/**
 Convert enum Note to String (for Svg Image)
 - Parameter enumNote: Note
 - Returns: String
 */
func noteToStringImage(enumNote: Note) -> String {
    switch (enumNote) {
    case Note.C:
        return "c"
    case Note.CSharp:
        return "c_sharp"
    case Note.D:
        return "d"
    case Note.DSharp:
        return "d_sharp"
    case Note.E:
        return "e"
    case Note.F:
        return "f"
    case Note.FSharp:
        return "f_sharp"
    case Note.G:
        return "g"
    case Note.GSharp:
        return "g_sharp"
    case Note.A:
        return "a"
    case Note.ASharp:
        return "a_sharp"
    case Note.B:
        return "b"
    }
}