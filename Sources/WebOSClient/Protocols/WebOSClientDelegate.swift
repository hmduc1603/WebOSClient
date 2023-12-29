//
//  WebOSClientDelegate.swift
//  Created by Yaroslav Sedyshev on 09.12.2023.
//

import Foundation

public protocol WebOSClientDelegate: AnyObject {
    func didConnect()
    func didPrompt()
    func didRegister(with clientKey: String)
    func didReceive(_ result: Result<WebOSResponse, Error>)
    func didReceive(jsonResponse: String)
    func didReceiveNetworkError(_ error: Error?)
    func didDisconnect()
}

public extension WebOSClientDelegate {
    func didConnect() {}
    func didPrompt() {}
    func didReceive(_ result: Result<WebOSResponse, Error>) {}
    func didReceive(jsonResponse: String) {}
    func didDisconnect() {}
}
