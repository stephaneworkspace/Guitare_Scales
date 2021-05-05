//
// Created by Stephane Bressani on 02.05.21.
//

import Foundation

import SwiftUI

struct Screen1: View {
    var scale = [Note.C, Note.CSharp, Note.D, Note.DSharp, Note.E, Note.F, Note.FSharp, Note.G, Note.GSharp, Note.A, Note.ASharp, Note.B]
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Notes")
                        .font(.system(size: 20))
                        .bold()
                Spacer()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            }
            List(scale, id: \.self) { data in
                NavigationLink(destination: ScreenNoteChoice(currentChoice: data)) {
                    Text(noteToString(enumNote: data, swBemol: false))
                }
                Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .background(Color(.yellow).opacity(0.2))
            .navigationBarTitle("Guitar scales")
        }
    }
}
