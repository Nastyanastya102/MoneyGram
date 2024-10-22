//
//  ContentView.swift
//  MoneyGram
//
//  Created by Nastya Klyashtorna on 2024-10-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("money-bg")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Text("Welcome to your Expenses Tracker")
                        .font(.title)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 12)
                        .dynamicTypeSize(.xSmall)
                    
                    Spacer()
                    VStack {
                        NavigationLink(destination: ExpensesView()) {
                            HStack {
                                Image(systemName: "dollarsign")
                                    .imageScale(.medium)
                                    .foregroundStyle(Color.gray)
                                    .padding(.leading, 4)
                                
                                Text("Start tracking your expenses!")
                                    .padding(10)
                            }
                            .foregroundColor(Color.gray)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                        }
                    }
                    .padding(10)
                }
                .padding()
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}

#Preview {
    ContentView()
}
