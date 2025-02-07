//
//  ContentView.swift
//  CSVEditor
//
//  Created by Daniel Koller on 02.02.25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: CSVViewModel
    
    var body: some View {
        CSVTableView(viewModel: viewModel)
        .toolbar {
            CSVImportButton(viewModel: viewModel)
            CSVExportButton(viewModel: viewModel)
            CSVAddRowButton(viewModel: viewModel)
        }
    }
}

#Preview {
    ContentView(viewModel: CSVViewModel.preview)
}
