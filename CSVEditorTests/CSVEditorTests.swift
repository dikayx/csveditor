//
//  CSVEditorTests.swift
//  CSVEditorTests
//
//  Created by Daniel Koller on 02.02.25.
//

import Testing
@testable import CSVEditor

struct CSVEditorTests {
    
    @Test func testParseCSV() async throws {
        let viewModel = CSVViewModel()
        let sampleCSV = "Column1,Column2\nValue1,Value2"
        
        viewModel.parseCSV(content: sampleCSV)
        
        #expect(viewModel.headers.count == 2)
        #expect(viewModel.rows.count == 1)
        #expect(viewModel.rows.first?.cells.first?.content == "Value1")
    }
    
    @Test func testAddRow() async throws {
        let viewModel = CSVViewModel()
        viewModel.headers = [CSVHeader(name: "Column1", columnIndex: 0)]
        
        viewModel.addRow()
        
        #expect(viewModel.rows.count == 1)
        #expect(viewModel.rows.first?.cells.count == 1)
        #expect(viewModel.rows.first?.cells.first?.content == "")
    }
    
    @Test func testDeleteRow() async throws {
        let viewModel = CSVViewModel()
        viewModel.headers = [CSVHeader(name: "Column1", columnIndex: 0)]
        viewModel.addRow()
        let row = viewModel.rows.first!
        
        viewModel.delete(row: row, selection: [row.id])
        
        #expect(viewModel.rows.isEmpty)
    }
}
