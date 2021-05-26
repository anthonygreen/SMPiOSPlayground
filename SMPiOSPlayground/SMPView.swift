//
//  SMPView.swift
//  SMPiOSPlayground
//
//  Created by Anthony Green on 26/05/2021.
//

import Foundation
import SwiftUI

struct SMPView: UIViewRepresentable {

    var smpVideoView: UIView?

    func makeUIView(context: Context) -> UIView {
        return SMPUIView(videoView: smpVideoView)
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        guard let uiView = uiView as? SMPUIView else { return }
        uiView.videoView = smpVideoView
    }
}
