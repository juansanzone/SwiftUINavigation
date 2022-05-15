//
//  SwiftUINavigationController.swift
//
//
//  Created by Juan Sanzone on 28/04/2022.
//

import UIKit
import SwiftUI

// MARK: - SwiftUINavigationController

public protocol SwiftUINavigationControllerProtocol {
    var navigationController: UINavigationController? { get set }
    func push(viewController: UIViewController)
    func present(viewController: UIViewController)
    func popToRoot()
}

// MARK: - SwiftUINavigationController

open class SwiftUINavigationController: SwiftUINavigationControllerProtocol {
    
    // MARK: Public properties
    
    public weak var navigationController: UINavigationController?

    // MARK: Init
    
    public init() {}
    
    // MARK: Public methods
    
    public func push(viewController: UIViewController) {
        navigationController?.pushViewController(
            viewController,
            animated: UIView.areAnimationsEnabled
        )
    }

    public func present(viewController: UIViewController) {
        navigationController?.present(
            viewController,
            animated: UIView.areAnimationsEnabled
        )
    }
    
    public func popToRoot() {
        navigationController?.popToRootViewController(
            animated: UIView.areAnimationsEnabled
        )
    }
}
