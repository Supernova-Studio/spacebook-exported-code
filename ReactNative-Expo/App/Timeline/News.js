//
//  News.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { Image, View, Text, StyleSheet } from "react-native"

export default class News extends React.Component {

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
            source={require("./../../assets/images/bg-news-temp-2.png")}
            style={styles.bgNewsTempImage}/>
          <Text
            style={styles.melonHuskLaunchesText}>Melon Husk launches the first car that can travel a galaxy on a single tank of gas.</Text>
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
                style={styles.spacewoman185kLiText}>Spacewoman & 185k like this</Text>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  flex: 1,
                  justifyContent: "flex-end",
                  alignItems: "center",
                }}>
                <Image
                  source={require("./../../assets/images/icon-comment.png")}
                  style={styles.iconCommentImage}/>
                <Text
                  style={styles.kCommentsText}>21k comments</Text>
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
                source={require("./../../assets/images/icon-avatar.png")}
                style={styles.iconAvatarImage}/>
              <View
                pointerEvents="box-none">
                <Text
                  style={styles.spacecrunchText}>SpaceCrunch</Text>
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
    height: 419,
  },
  bgWhiteView: {
    backgroundColor: 'rgb(255, 255, 255)',
    marginTop: 30,
    flex: 1,
  },
  bgNewsTempImage: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 375,
    height: 200,
    marginTop: 80,
    flex: 1,
  },
  melonHuskLaunchesText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 335,
    height: 51.27,
    marginLeft: 20,
    marginTop: 18,
    marginRight: 20,
    color: 'rgb(7, 7, 7)',
    fontFamily: "Lato-Regular",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    lineHeight: 20,
    letterSpacing: 0,
  },
  viewTwoView: {
    backgroundColor: 'rgb(250, 250, 250)',
    height: 59,
    marginTop: 10,
    justifyContent: "center",
  },
  viewView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 82,
    marginLeft: 9,
    marginTop: 14,
    marginRight: 9,
  },
  iconAvatarImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 82,
    height: 82,
  },
  spacecrunchText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 8,
    marginTop: 25,
    color: 'rgb(15, 15, 15)',
    fontFamily: "Lato-Bold",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "left",
    letterSpacing: 0,
  },
  today145PmText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 8,
    marginTop: 3,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 10,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  iconLikeImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 19,
    height: 19,
    marginLeft: 20,
  },
  spacewoman185kLiText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 5,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  kCommentsText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginRight: 20,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  iconCommentImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 19,
    height: 19,
    marginRight: 5,
  },
})
