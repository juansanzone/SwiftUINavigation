//
//  ViewControllableProtocol.swift
//  
//
//  Created by Juan Sanzone on 15/05/2022.
//

import SwiftUI
import UIKit

public protocol ViewControllableProtocol {
    func viewController() -> UIViewController
}

public extension ViewControllableProtocol where Self: View {
    func viewController() -> UIViewController {
        return UIHostingController(rootView: self)
    }
}
