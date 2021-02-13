//
//  ContentView.swift
//  MyJanken
//
//  Created by 密山 彩葉 on 2021/02/13.
//

import SwiftUI

struct ContentView: View {
    
    // structの中の変数は通常値の更新が出来ない
    // ＠Stateで更新出来るようになる
    // 更新されると画面が再描画される
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            // スペースを追加
            Spacer()
            
            if answerNumber == 0 {
                Text("これからジャンケンをします！")
                    .padding()
            } else if answerNumber == 1 {
                // グー画像を表示
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("グー")
                    .padding(.bottom)
                
            } else if answerNumber == 2 {
                // チョキ画像を表示
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("チョキ")
                    .padding(.bottom)
            } else {
                // パー画像を表示
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("パー")
                    .padding(.bottom)
            }
            
            Button(action: {
                // 次のジャンケンへ
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
            }) {
                Text("ジャンケンをする！")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
