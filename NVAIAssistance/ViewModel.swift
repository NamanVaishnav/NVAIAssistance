//
//  ViewModel.swift
//  NVAIAssistance
//
//  Created by Naman on 03/12/23.
//

import Foundation
import Observation
import AVFoundation
import XCAOpenAIClient

@Observable
class ViewModel: NSObject {
    let client = OpenAIClient(apiKey: "")
    
    var selectedVoice = VoiceType.alloy
    var state = VoiceChatState.idle {
        didSet { print(state) }
    }
    var isIdle: Bool {
        if case .idle = state {
            return true
        }
        return false
    }
    var audioPower = 0.0
    var siriWaveFormOpacity: CGFloat {
        switch state {
        case .recordingSpeech, .playingSpeech:
            return 1
        default:
            return 0
        }
    }
    
    
    func startCaptureAudio() {
        
    }
    
    func cancelRecording() {
        
    }
    
    func cancelProcessingTask() {
        
    }
}
