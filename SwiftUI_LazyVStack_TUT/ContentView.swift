//
//  ContentView.swift
//  SwiftUI_LazyVStack_TUT
//
//  Created by 김선중 on 2021/02/06.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("LazyVStack")
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical, 50)
            
                     //.horizontal로 수정
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(1...100, id: \.self) { i in
                        //VStack으로 도형 추가
                        VStack {
                            Capsule()
                                .fill(Color.blue)
                                .frame(width: 100, height: 50)
                            Text("Row \(i)")
                                .foregroundColor(.secondary)
                                .padding(.all, 10)
                        }
                    }
                    .padding(.all, 8)
                }
                //스크롤의 프레임 설정
            } .frame(height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
