import Foundation

import SwiftUI


struct InformationView: View {
    var body: some View {
       
            ZStack{
                // Background
                Color.white.edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack(alignment: .leading, spacing: 14.0) {
                        Text("Date")
                            .font(.custom("Poppins-Bold", size: 32.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                        Text("Departure date must confirm the relevant admin if there is a schedule cancellation")
                            .font(.custom("Poppins-Regular", size: 14.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                            .frame(width: 362.0, alignment: .topLeading)
                    }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 362.0, height: 104.0)
                    
                    VStack(alignment: .leading, spacing: 14.0) {
                        Text("Rundown")
                            .font(.custom("Poppins-Bold", size: 32.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Ranupane (Basecamp) - Pos 1 (Landengan Dowo)\n\nLocated at an altitude of 2,100 meters above sea level, Ranu Pani is the licensing and checking post for all visitors. Group hikers are simply represented by a team or group leader by submitting a photocopy of their identity card, a list of hikers' names, a health certificate, and a list of luggage.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 45)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 45)..<string.characters.index(string.startIndex, offsetBy: 46)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 46)..<string.characters.index(string.startIndex, offsetBy: 346)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Pos 1 (Landengan Dowo) - Pos 2 (Watu Rejeng)\n\nThe distance between post 1 and post 2 is the closest, with a fairly gentle route. At the beginning, the path is slightly uphill with dirt path conditions. However, the road conditions are still sloping. Right and left are bushes and trees. Then climbers will arrive at post 2.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 45)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 45)..<string.characters.index(string.startIndex, offsetBy: 46)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 46)..<string.characters.index(string.startIndex, offsetBy: 323)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Pos 2 (Watu Rejeng) - Pos 3\n\nThis is the longest of all the Ranu Pane to Ranu Kumbolo routes. The initial route is a dirt road with large rocks, uphill for a short distance, and then sloping again. Climbers will encounter several medium-sized trees that grow sideways and across the climbing path, thus slightly blocking the road. Hikers must duck and walk under the transverse tree trunks or step over them in order to pass. After that, the road slopes back down without any tree obstacles. Then hikers will reach a wooden bridge in the middle of the forest. It is recommended that hikers do not stand still for long on the bridge to minimize possible risks. After passing the bridge, the road slopes again and then uphill again until post 3.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 28)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 28)..<string.characters.index(string.startIndex, offsetBy: 29)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 29)..<string.characters.index(string.startIndex, offsetBy: 743)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Pos 3 - Pos 4\n\nThe path goes uphill with a staircase-like dirt road, with handrails made of tree branches on either side. After the short uphill walk, the path slopes down again. Right and left are bushes and large trees. After going further, on the left is a ravine and on the right is a cliff wall, right and left full of shrubs and small to medium-sized trees. As we get closer to post 4, the green Ranu Kumbolo lake comes into view. This beautiful view feels refreshing. Then, climbers arrive at post 4")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 14)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 14)..<string.characters.index(string.startIndex, offsetBy: 15)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 15)..<string.characters.index(string.startIndex, offsetBy: 506)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Pos 4 - Ranu Kumbolo\n\nThe path is a sloping dirt road with weeds on either side. The route then descends and continues in the form of a sloping road on the edge of the lake. The sloping road is like a vast meadow overgrown with weeds, until climbers arrive at the Ranu Kumbolo camping area. Usually hikers camp here as well as rest before continuing their journey to Kalimati, which is the next point that is usually used as a camping spot.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 21)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 21)..<string.characters.index(string.startIndex, offsetBy: 22)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 22)..<string.characters.index(string.startIndex, offsetBy: 440)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Ranu Kumbolo - Oro Oro Ombo\n\nThe route begins by climbing a steep incline called Tanjakan Cinta, located behind Ranu Kumbolo lake. There is a myth that says that if you pass through Tanjakan Cinta by not looking back, then you will definitely last with your partner. Again, this is a myth without any scientific evidence. For the condition of the ramp of love in the form of a path in the middle of the grass that grows throughout the place. After that climbers arrive at Oro-Oro Ombo.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 28)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 28)..<string.characters.index(string.startIndex, offsetBy: 29)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 29)..<string.characters.index(string.startIndex, offsetBy: 485)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Oro Oro Ombo - Cemoro Kandang\n\nOro-Oro Ombo is a vast savanna or grassland overgrown with grass and trees. There is also a beautiful purple-colored plant called Verbena Brasiliensis Vell that originated from Brazil, South America. This plant is parasitic and thrives in April-May, then withers by November. This plant will flower in the first year, then in the second year wither and produce 90,000-100,000 seeds at the end of the stalk. Hikers are advised not to pick them so as not to cause the plant to spread. If you really want to take it, the correct way is to pull it out when it is still flowering and has not dried up, then put it in plastic and store it in a bag. If hikers cannot follow these steps, they are advised not to pick this plant, just pass by while enjoying its beauty by taking pictures. After Oro-Oro Ombo, hikers arrive at Cemoro Kandang.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 30)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 30)..<string.characters.index(string.startIndex, offsetBy: 31)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 31)..<string.characters.index(string.startIndex, offsetBy: 863)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Cemoro Kandang - Jambangan\n\nThe trail is a path with grass, bushes and trees on either side. The road continues to climb, although not extreme and steep, but it requires physical condition that remains excellent. Many hikers usually rest on this path. Unwind while taking pictures. After that, hikers will reach Jambangan.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 27)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 27)..<string.characters.index(string.startIndex, offsetBy: 28)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 28)..<string.characters.index(string.startIndex, offsetBy: 322)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Jambangan - Kalimati\n\nFrom Jambangan you can see the summit of Semeru a little bit. This is where climbers usually get excited again because they can see the peak getting closer.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 21)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 21)..<string.characters.index(string.startIndex, offsetBy: 22)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 22)..<string.characters.index(string.startIndex, offsetBy: 178)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Kalimati - Kelik\n\nUsually climbers camp in Kalimati, which is a large meadow overgrown with grass, weeds, and trees. Climbing to the summit is recommended starting at 24.00. Because, at around 10:00, the wind in the peak area usually turns and leads to climbers. This wind carries poisonous gas. So, if you climb at 24.00, with a climbing time of 6-7 hours, climbers will have about 2-3 hours at the top of Mahameru. Meanwhile, from Kalimati to Kelik the road is uphill, and Kelik is the limit of vegetation, which is the limit of growing trees. At the beginning of the climb, the path is a dirt path. However, as you get closer to Kelik, the path becomes a rocky sandy road, after which climbers arrive at Kelik. The important thing to remember is that insurance covers climbers only up to Kalimati. If you want to get to the top, then the risk is borne by the climber himself, including the risk of life safety.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 17)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 17)..<string.characters.index(string.startIndex, offsetBy: 18)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 18)..<string.characters.index(string.startIndex, offsetBy: 913)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("Kelik - Mahameru Peak\n\nThe hiking trail is a sand and rocky road that is uphill and steep. Climbers must climb in a zigzag manner because the path cannot be traveled in a straight line. Because, the contours of the foothold in the form of sand are uneven conditions, every time you go up three steps it is likely to go down again one step. Therefore, zigzagging is the best way to climb to the top. There are a few large rocks, which can be used as handles or pedestals, but this is very risky. When the rock is held, it can fall because the sand is uneven and unstable. Falling rocks can be dangerous for other climbers below, even risking loss of life. So, for the most recommended grip tool is a trekking pole. Because, there are no trees to use as handles. After a long climb, climbers will reach the top. The scenery is very beautiful with a sea of white clouds floating around the top of Mahameru, and the sky looks bright blue so bright. The scenery makes anyone stunned.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 22)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 22)..<string.characters.index(string.startIndex, offsetBy: 23)
                            string[_1Range].font = .custom("Poppins-Regular", size: 14.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            let _2Range = string.characters.index(string.startIndex, offsetBy: 23)..<string.characters.index(string.startIndex, offsetBy: 978)
                            string[_2Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_2Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text({ () -> AttributedString in
                            var string = AttributedString("NOTES:\nMaintain your attitude, speech and behavior while on the mountain. Do not damage the mountain and do not commit vandalism.")

                            let _0Range = string.characters.index(string.startIndex, offsetBy: 0)..<string.characters.index(string.startIndex, offsetBy: 7)
                            string[_0Range].font = .custom("Poppins-Medium", size: 14.0)
                            string[_0Range].foregroundColor = Color(white: 0.0)

                            let _1Range = string.characters.index(string.startIndex, offsetBy: 7)..<string.characters.index(string.startIndex, offsetBy: 129)
                            string[_1Range].font = .custom("Poppins-Regular", size: 12.0)
                            string[_1Range].foregroundColor = Color(white: 0.0)

                            return string
                        }())
                            .frame(width: 362.0, alignment: .topLeading)
                        Text("After reaching the top, you must descend before 10:00 am. Because to avoid gusts of wind that carry toxic gases from the crater.")
                            .font(.custom("Poppins-Regular", size: 12.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                            .frame(width: 362.0, alignment: .topLeading)
                        Text("When heading to the top in the sandy area, never step on / stand / sit / lean on the rock because the rock in the sandy area is very easy to landslide.")
                            .font(.custom("Poppins-Regular", size: 12.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                            .frame(width: 362.0, alignment: .topLeading)
                        Text("Use mountain shoes complete with gaiters to be comfortable when summits attack.")
                            .font(.custom("Poppins-Regular", size: 12.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                            .frame(width: 362.0, alignment: .topLeading)
                        Text("Use trackpole if necessary")
                            .font(.custom("Poppins-Regular", size: 12.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                            .frame(width: 362.0, alignment: .topLeading)
                        Text("Do not use headsets and earphones when summit attack to the top of Mahameru.")
                            .font(.custom("Poppins-Regular", size: 12.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                            .frame(width: 362.0, alignment: .topLeading)
                        Text("Always prepare enough supplies during the climb")
                            .font(.custom("Poppins-Regular", size: 12.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                            .frame(width: 362.0, alignment: .topLeading)
                        Text("Never leave the group or leave traveling companions.")
                            .font(.custom("Poppins-Regular", size: 12.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                            .frame(width: 362.0, alignment: .topLeading)
                    }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 362.0, height: 3068.0)
                    
                }
                
            }
        }
    }
    
    struct InformationView_Previews: PreviewProvider {
        static var previews: some View {
            InformationView()
        }
    }

