//
//  ProfileView.swift
//  BluePrtints
//
//  Created by hiraoka on 2021/01/28.
//

import SwiftUI

struct ProfileView: View {
    
    let dateFormat: (Date) -> String = { date in
        let f = DateFormatter()
        f.timeStyle = .none
        f.dateStyle = .medium
        return f.string(from: date)
    }
    
    
    var body: some View {
        TabView {
            VStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.secondary)
                
                HStack {
                    Text("Overview")
                        .font(Font.system(size: 26, weight: .heavy))
                    Image(systemName: "bell")
                    
                    Spacer()
                    
                    Text(dateFormat(Date()))
                }
                .padding(.vertical, 16.0)
                
                Group {
                    RoundedRectangle(cornerRadius: 25.0)
                    RoundedRectangle(cornerRadius: 25.0)
                    RoundedRectangle(cornerRadius: 25.0)
                }
                .foregroundColor(.secondary)
                .overlay(
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 25.0).frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("Sent")
                                .font(.body)
                            Text("Sending Payment to Clients")
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        Text("$150").bold()
                    }
                    .padding(.horizontal)
                )
                .frame(height: 80)
            }
            .padding(.horizontal, 24.0)
            .padding(.vertical)
            
        }
        
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
