//
//  NewsTwo.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Image, Text, View, StyleSheet } from "react-native"
import React from "react"

export default class NewsTwo extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.news}>
        <View
          pointerEvents="box-none"
          style={styles.bgWhiteView}>
          <View
            pointerEvents="box-none"
            style={{
              flex: 1,
              flexDirection: "column",
              justifyContent: "flex-end",
            }}/>
        </View>
        <View
          pointerEvents="box-none"
          style={{
            position: "absolute",
            width: "100%",
            height: "100%",
          }}>
          <Image
            source={require("./../../assets/images/bg-news-temp.png")}
            style={styles.bgNewsTempImage}/>
          <Text
            style={styles.raidersFromTheGemText}>Raiders from the Gemini Cluster are attacking colonial trader ships. When will the Federation step in?</Text>
          <View
            pointerEvents="box-none"
            style={styles.viewTwoView}>
            <View
              pointerEvents="box-none"
              style={{
                flexDirection: "row",
                alignSelf: "stretch",
                alignItems: "center",
              }}>
              <Image
                source={require("./../../assets/images/icon-like.png")}
                style={styles.iconLikeImage}/>
              <Text
                style={styles.varthDader3kLikText}>Varth Dader & 3k like this</Text>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  flex: 1,
                  justifyContent: "flex-end",
                  alignItems: "center",
                }}>
                <Text
                  style={styles.commentsDisabledByText}>Comments disabled by the force</Text>
              </View>
            </View>
          </View>
        </View>
        <View
          pointerEvents="box-none"
          style={{
            position: "absolute",
            width: "100%",
            height: "100%",
          }}>
          <View
            pointerEvents="box-none"
            style={styles.viewView}>
            <View
              pointerEvents="box-none"
              style={{
                flexDirection: "row",
                alignSelf: "stretch",
              }}>
              <Image
                source={require("./../../assets/images/icon-avatar-2.png")}
                style={styles.iconAvatarImage}/>
              <View
                pointerEvents="box-none">
                <Text
                  style={styles.theGoodOldTimesText}>The Good Old Times</Text>
                <Text
                  style={styles.today145PmText}>Today, 1:45 PM</Text>
              </View>
            </View>
          </View>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  news: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 470,
  },
  bgWhiteView: {
    backgroundColor: 'rgb(255, 255, 255)',
    marginTop: 30,
    marginBottom: 1,
    flex: 1,
  },
  bgNewsTempImage: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 375,
    height: 250,
    marginTop: 80,
    flex: 1,
  },
  raidersFromTheGemText: {
    color: 'rgb(7, 7, 7)',
    fontFamily: "Lato-Regular",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    lineHeight: 20,
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 20,
    marginTop: 18,
    marginRight: 20,
    flex: 1,
  },
  viewTwoView: {
    backgroundColor: 'rgb(250, 250, 250)',
    height: 59,
    marginTop: 22,
    marginBottom: 1,
    justifyContent: "center",
  },
  viewView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 80,
    marginLeft: 10,
    marginTop: 16,
    marginRight: 20,
  },
  iconAvatarImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 80,
    height: 80,
  },
  theGoodOldTimesText: {
    color: 'rgb(15, 15, 15)',
    fontFamily: "Lato-Bold",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "left",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 9,
    marginTop: 23,
  },
  today145PmText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 10,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 9,
    marginTop: 3,
  },
  iconLikeImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 19,
    height: 19,
    marginLeft: 20,
  },
  varthDader3kLikText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 5,
  },
  commentsDisabledByText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "right",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.2,
    marginRight: 20,
  },
})
