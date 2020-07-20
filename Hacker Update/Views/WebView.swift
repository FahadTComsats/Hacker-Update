//
//  WebView.swift
//  Hacker Update
//
//  Created by Fahad Tariq on 20/07/2020.
//  Copyright © 2020 Fahad Tariq. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI 

struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {

    return WKWebView()

    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {

    if let safeString = urlString {

    if let url = URL(string: safeString){

    let request = URLRequest(url: url)

    uiView.load(request)

    }

    }


    
    
}
}
