//
//  ProductListView.swift
//  SwipeAssignment_Himanshu
//
//  Created by Himanshu Gupta on 05/04/24.
//

import SwiftUI

struct ProductListView: View {
    var body: some View {
        NavigationView{
            List(0 ..< 5) { item in
                VStack {
                    HStack {
                        Image(systemName: "rainbow")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(5)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text("This is a rainbow")
                                .fontWeight(.semibold)
                                .lineLimit(2)
                            .minimumScaleFactor(0.7)
                            
                            Text("Product type")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                            
                            HStack{
                                Text("Price: 0090")
                                    .font(.subheadline)
                                
                                Spacer()
                                
                                Text("Tax: 09iu")
                                    .font(.subheadline)
                                    .lineLimit(1)
                            }
                        }
                        
                    }
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Swipe Products")
        }
    }
}

#Preview {
    ProductListView()
}
