//
//  SwiftUINavigationView.swift
//
//
//  Created by Juan Sanzone on 28/04/2022.
//

import SwiftUI
import Introspect

public struct SwiftUINavigationView<Content>: View where Content: View {
    
    // MARK: Private Properties
    
    private let title: String?
    private let content: Content
    private let navigationController: SwiftUINavigationController?
        
    // MARK: Init
    
    public init(
        title: String?,
        navigationController: SwiftUINavigationController?,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.content = content()
        self.navigationController = navigationController
    }
    
    // MARK: View
    
    public var body: some View {
        NavigationView {
            Group {
                if title == nil {
                    contentWithoutTitle
                } else {
                    contentWithTitle
                }
            }
            .introspectNavigationController { navigationController in
                self.navigationController?.navigationController = navigationController
            }
            .navigationViewStyle(.stack)
        }
    }
    
    // MARK: Privates
    
    private var contentWithTitle: some View {
        content.navigationTitle(title ?? "")
    }
    
    private var contentWithoutTitle: some View {
        content
    }
}
