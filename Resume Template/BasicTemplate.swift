//
//  BasicTemplate.swift
//  test
//
//  Created by Adsum MAC 3 on 13/07/21.
//

import SwiftUI

struct BasicTemplate: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ZStack {
                VStack(alignment:.leading) {
                    Text("John Doe")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Phone")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("(555) 214-8963")
                            .font(.title3)
                    }
                    
                    HStack {
                        Text("Email")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("j.doe@gmail.com")
                            .font(.title3)
                    }
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                        .padding(.top)
                    
                    Spacer()
                    
                    VStack(alignment:.leading){
                        
                        Text("EXPERIENCE")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Divider()
                        
                        HStack {
                            Text("2/2019")
                                .fontWeight(.semibold)
                            
                            Text("-")
                            
                            Text("2/2020")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("Apple Inc")
                                    .fontWeight(.bold)
                                Text("Software Developer")
                            }
                        }
                        
                        HStack {
                            Text("10/2020")
                                .fontWeight(.semibold)
                            
                            Text("-")
                            
                            Text("Present")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("IBM")
                                    .fontWeight(.bold)
                                Text("VP")
                            }
                        }
                        
                        HStack {
                            Text("2/2019")
                                .fontWeight(.semibold)
                            
                            Text("-")
                            
                            Text("2/2020")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("Facebook")
                                    .fontWeight(.bold)
                                Text("Associate")
                            }
                        }
                        
                    }.padding(.top,20)
                    
                    VStack(alignment:.leading){
                        
                        Text("EDUCATION")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Divider()
                        
                        HStack {
                            Text("2020")
                                .fontWeight(.semibold)
                            
                            Text("-")
                            
                            Text("Present")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("Harvard")
                                    .fontWeight(.bold)
                                Text("Computer Science")
                            }
                        }
                        
                        HStack {
                            Text("2010")
                                .fontWeight(.semibold)
                            
                            Text("-")
                            
                            Text("2015")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("OSU")
                                    .fontWeight(.bold)
                                Text("Programming")
                            }
                        }
                        
                    }.padding(.top,20)
                    
                    VStack(alignment:.leading){
                        
                        Text("SOFTWARE")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Divider()
                        
                        HStack {
                            Text("Microsoft Word")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("Good")
                        }
                        
                        HStack {
                            Text("Xcode")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("Excellent")
                        }
                        
                        HStack {
                            Text("Photoshop")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("Very Good")
                        }
                        
                        HStack {
                            Text("Keynote")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("Good")
                        }
                        
                    }.padding(.top,20)
                    
                    VStack(alignment:.leading){
                        
                        Text("SKILLS")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Divider()
                        
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                    }.padding(.top,20)
                    
                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct BasicTemplate_Previews: PreviewProvider {
    static var previews: some View {
        BasicTemplate()
    }
}
