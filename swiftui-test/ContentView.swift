//
//  ContentView.swift
//  swiftui-test
//
//  Created by Kelvin Chin on 16/11/2026.
//

import AVFoundation
import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    let synth = AVSpeechSynthesizer()

    var body: some View {
        VStack {
            Button {
                let utterance = AVSpeechUtterance(string: "Hello I'm Macintosh!")
                // Use the classic Fred voice, to mimic the original Macintosh computer's voice
                utterance.voice = AVSpeechSynthesisVoice(
                    identifier: "com.apple.speech.synthesis.voice.Fred")
                synth.speak(utterance)
            } label: {
                Text("Hello I'm Macintosh!")
            }.padding()
                .foregroundStyle(.white)
                .background(.yellow)
                .clipShape(
                    RoundedRectangle(cornerRadius: 20)
                )
            Button {
                showAlert = true
            } label: {
                Text("Hello World")
            }.padding()
                .foregroundStyle(.white)
                .background(.purple)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .alert("Yes, this is important!", isPresented: $showAlert) {}
        }
    }
}

#Preview {
    ContentView()
}
