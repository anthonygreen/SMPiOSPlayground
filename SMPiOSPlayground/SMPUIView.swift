//
//  SMPUIView.swift
//  SMPiOSPlayground
//
//  Created by Anthony Green on 26/05/2021.
//

import Foundation
import SwiftUI

class SMPUIView: UIView {

    var videoView: UIView? {
        didSet {
            updateVideoView(previousVideoView: oldValue)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    convenience init(videoView: UIView?) {
        self.init(frame: .zero)
        self.videoView = videoView
    }

    private func setupView() {
        updateVideoView(previousVideoView: nil)
    }

    private func updateVideoView(previousVideoView: UIView?) {
        previousVideoView?.removeFromSuperview()
        guard let videoView = videoView else { return }
        videoView.frame = self.bounds
        self.addSubview(videoView)
    }
}
