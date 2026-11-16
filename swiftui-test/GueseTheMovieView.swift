//
//  GueseTheMovieView.swift
//  swiftui-test
//
//  Created by Kelvin Chin on 16/11/2026.
//

import AVFoundation
import SwiftUI

struct GueseTheMovieView: View {
    let synth = AVSpeechSynthesizer()

    var body: some View {
        VStack {
            VStack {
                Text("Guese These Movies")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Can you guess these movies based on the emojis?")
                    .multilineTextAlignment(.center)
            }.padding()

            VStack {
                // Five Night at Freddy's
                Button {
                    let utterance = AVSpeechUtterance(string: "Five Night at Freddy's")
                    let voice = AVSpeechSynthesisVoice(
                        identifier: "com.apple.speech.synthesis.voice.Fred")
                    utterance.voice = voice
                    synth.speak(utterance)
                } label: {
                    Text("🧸🤖🎪")
                }.padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                // Jaws
                Button {
                    let utterance = AVSpeechUtterance(string: "Jaws")
                    let voice = AVSpeechSynthesisVoice(
                        identifier: "com.apple.speech.synthesis.voice.Fred")
                    utterance.voice = voice
                    synth.speak(utterance)
                } label: {
                    Text("🦈🏊‍♂️")
                }.padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                // The Lion King
                Button {
                    let utterance = AVSpeechUtterance(string: "The Lion King")
                    let voice = AVSpeechSynthesisVoice(
                        identifier: "com.apple.speech.synthesis.voice.Fred")
                    utterance.voice = voice
                    synth.speak(utterance)
                } label: {
                    Text("🦁👑")
                }.padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
    }
}

#Preview {
    GueseTheMovieView()
}
