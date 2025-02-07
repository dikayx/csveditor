//
//  CSVExportButton.swift
//  CSVEditor
//
//  Created by Daniel Koller on 06.02.25.
//

import SwiftUI
import UniformTypeIdentifiers

struct CSVExportButton: View {
    
    @ObservedObject var viewModel: CSVViewModel
    @State private var isPresented: Bool = false
    
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            Label("Export CSV", systemImage: "square.and.arrow.up")
        }
        .disabled(viewModel.content.isEmpty)
        
        .fileExporter(isPresented: $isPresented,
                      document: viewModel,
                      contentType: UTType.commaSeparatedText) { result in
            print("Result \(result)")
        }
    }
}

#Preview {
    CSVExportButton(viewModel: CSVViewModel.preview)
        .frame(width: 300, height: 100)
}
