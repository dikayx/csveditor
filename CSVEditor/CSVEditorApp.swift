//
//  CSVEditorApp.swift
//  CSVEditor
//
//  Created by Daniel Koller on 02.02.25.
//

import SwiftUI

@main
struct CSVEditorApp: App {
    var body: some Scene {
        DocumentGroup(viewing: CSVViewModel.self) { configuration in
            ContentView(viewModel: configuration.document)
        }
    }
}
