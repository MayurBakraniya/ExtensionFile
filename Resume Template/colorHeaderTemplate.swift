//
//  colorHeaderTemplate.swift
//  test
//
//  Created by Adsum MAC 3 on 13/07/21.
//

import SwiftUI

struct colorHeaderTemplate: View {
    
    @State var rating = -1
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ZStack {
                VStack {
                    VStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: UIScreen.main.bounds.width / 2, height: 3.5)
                        
                        Text("John Doe")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        HStack{
                            Text("(555) 214-8963")
                                .font(.system(size: 13))
                                .foregroundColor(Color.white)
                            
                            Text("|")
                                .foregroundColor(Color.white)
                            
                            Text("j.doe@gmail.com")
                                .font(.system(size: 13))
                                .foregroundColor(Color.white)
                            
                            Text("|")
                                .foregroundColor(Color.white)
                            
                            Text("https://linkdin.com/j.doe")
                                .font(.system(size: 13))
                                .foregroundColor(Color.white)
                        }.padding(.top)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 180)
                    .background(Color("db"))
                    
                    VStack(alignment:.leading){
                        
                        Capsule()
                            .fill(Color("db"))
                            .frame(width: UIScreen.main.bounds.width / 3.4, height: 3.5)
                        
                        Text("Summary")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("db"))
                        
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                        
                    }.padding()
                    
                    VStack(alignment:.leading){
                        
                        Capsule()
                            .fill(Color("db"))
                            .frame(width: UIScreen.main.bounds.width / 3, height: 3.5)
                        
                        Text("Experience")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("db"))
                        
                        HStack {
                            VStack(alignment:.trailing){
                                Text("Apple Inc")
                                    .fontWeight(.semibold)
                                Text("Software Developer")
                                
                                HStack {
                                    Text("2/2019")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("2/2020")
                                        .fontWeight(.semibold)
                                }
                            }
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("IBM")
                                    .fontWeight(.semibold)
                                Text("VP")
                                
                                HStack {
                                    Text("10/2020")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("Present")
                                        .fontWeight(.semibold)
                                }
                            }
                        }.padding()
                        
                        Divider()
                        
                        HStack {
                            VStack(alignment:.trailing){
                                Text("Facebook")
                                    .fontWeight(.semibold)
                                Text("Associate")
                                
                                HStack {
                                    Text("5/2005")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("10/2010")
                                        .fontWeight(.semibold)
                                }
                            }
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("NETFLIX")
                                    .fontWeight(.semibold)
                                Text("Senior VP")
                                
                                HStack {
                                    Text("10/2012")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("8/2020")
                                        .fontWeight(.semibold)
                                }
                            }
                        }.padding()
                        
                    }.padding()
                    
                    VStack(alignment:.leading){
                        
                        Capsule()
                            .fill(Color("db"))
                            .frame(width: UIScreen.main.bounds.width / 3.3, height: 3.5)
                        
                        Text("Education")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("db"))
                        
                        HStack {
                            VStack(alignment:.trailing){
                                
                                HStack {
                                    Text("2020")
                                        .fontWeight(.semibold)
                                    
                                    Text("-")
                                    
                                    Text("Present")
                                        .fontWeight(.semibold)
                                }
                                
                                Text("Harvard")
                                
                                Text("Computer Science")
                                    .fontWeight(.semibold)
                                
                            }
                            
                            Spacer()
                            Divider()
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                
                                HStack {
                                    Text("2010")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("2015")
                                        .fontWeight(.semibold)
                                }
                                
                                Text("OSU")
                                
                                Text("Programming")
                                    .fontWeight(.semibold)
                                
                            }
                        }.padding()
                        
                    }.padding()
                    
                    VStack(alignment:.leading){
                        
                        Capsule()
                            .fill(Color("db"))
                            .frame(width: UIScreen.main.bounds.width / 3.7, height: 3.5)
                        
                        Text("Software")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("db"))
                        
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Microsoft")
                                ratingView(rating: .constant(2))
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("Xcode")
                                ratingView(rating: $rating)
                                
                            }
                        }.padding([.top,.bottom])
                        
                        Divider()
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Photoshop")
                                ratingView(rating: .constant(2))
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("Keynote")
                                ratingView(rating: $rating)
                            }
                        }.padding([.top,.bottom])
                        
                    }.padding()
                    
                    HStack{
                        VStack(alignment:.leading) {
                            Capsule()
                                .fill(Color("db"))
                                .frame(width: UIScreen.main.bounds.width / 6, height: 3.5)
                            
                            Text("Skills")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("db"))
                                .padding([.bottom])
                            
                            Text("Public Speaking")
                            Text("Creativity")
                            Text("Spanish")
                            Text("Accounting")
                            Text("Negotiation")
                        }
                       Spacer()
                    }.padding()
                }
            }
        }
    }
}

struct colorHeaderTemplate_Previews: PreviewProvider {
    static var previews: some View {
        colorHeaderTemplate()
    }
}
