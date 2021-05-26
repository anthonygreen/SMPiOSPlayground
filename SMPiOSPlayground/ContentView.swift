//
//  ContentView.swift
//  SMPiOSPlayground
//
//  Created by Anthony Green on 26/05/2021.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel = ContentViewModel()
    @State var smpVideoView: UIView?

    var body: some View {
        VStack {
            SMPView(smpVideoView: smpVideoView)
            Button("Load SMP") {
                viewModel.loadSMP(vpid: "m000ryh8")
                smpVideoView = viewModel.smpView
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
