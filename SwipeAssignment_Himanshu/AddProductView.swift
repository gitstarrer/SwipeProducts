//
//  AddProductView.swift
//  SwipeAssignment_Himanshu
//
//  Created by Himanshu Gupta on 05/04/24.
//

import SwiftUI

struct AddProductView: View {
    @State private var name: String = ""
    @State private var price: String = ""
    @State private var tax: String = ""
    @State private var selectedType = "Product"
    let types = ["Product", "Special", "21", "sdas", "xyz"]
    
    var body: some View {
        
        NavigationView{
            VStack {
                Form {
                    Section(header: Text("Product Name")){
                        TextField(text: $name) {
                            Text("Product Name")
                                .padding()
                        }
                    }
                    
                    Section(header: Text("Product Type")){
                        Picker("Product Type", selection: $selectedType) {
                            ForEach(types, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    
                    Section(header: Text("Price")){
                        TextField(text: $price) {
                            Text("Product Selling Price")
                                .padding()
                        }
                        TextField(text: $tax) {
                            Text("Tax")
                                .padding()
                        }
                    }
                }
            }
            .navigationTitle("Add Product")
        }
    }
}

#Preview {
    AddProductView()
}
