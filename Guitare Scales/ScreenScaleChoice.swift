//
// Created by Stephane Bressani on 02.05.21.
//

import Foundation
import SwiftUI

struct ScreenScaleChoice: View {
    @Environment(\.colorScheme) var colorScheme
    @State var currentChoice: Scale;
    @State var tonic: Note;
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(scaleToString(enumScale: currentChoice, tonic: noteToStringImage(enumNote: tonic))).font(.system(size: 20)).bold()
                Spacer()
                Image(scaleToStringImage(enumScale: currentChoice, tonic: noteToStringImage(enumNote: tonic), theme: colorSchemeToTheme(colorScheme: colorScheme))).resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color(.green).opacity(0.2))
        .navigationBarTitle(scaleToString(enumScale: currentChoice, tonic: noteToStringImage(enumNote: tonic)))
        .edgesIgnoringSafeArea(.bottom)
    }
}
/*
struct ScreenScaleChoice_Previews: PreviewProvider {
    static var previews: some View {
        ScreenDetail()
    }
}
*/