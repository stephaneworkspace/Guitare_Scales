//
// Created by Stephane Bressani on 05.05.21.
//

import Foundation
import SwiftUI

struct ScreenNoteChoice: View {
    var scale = [Scale.Major, Scale.Minor, Scale.MajorPentagonic, Scale.PhrygianDominant, Scale.Dorian, Scale.Dorian4, Scale.Mixolydian]
    @State var currentChoice: Note;
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(noteToString(enumNote: currentChoice, swBemol: false)).font(.system(size: 20)).bold()
                Spacer()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            }
            List(scale, id: \.self) { data in
                NavigationLink(destination: ScreenScaleChoice(currentChoice: data, tonic: currentChoice)) {
                    Text(scaleToString(enumScale: data, tonic: noteToStringImage(enumNote: currentChoice)))
                }
                Spacer()
            }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .background(Color(.green).opacity(0.2))
                .navigationBarTitle(noteToString(enumNote: currentChoice, swBemol: false))
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}
/*
struct ScreenNoteChoice_Previews: PreviewProvider {
    static var previews: some View {
        ScreenNoteChoice()
    }
}
*/