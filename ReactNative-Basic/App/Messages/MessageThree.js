//
//  MessageThree.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Image, Text, View, StyleSheet } from "react-native"
import React from "react"

export default class MessageThree extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.message}>
        <View
          pointerEvents="box-none"
          style={{
            flexDirection: "row",
            alignSelf: "stretch",
            alignItems: "center",
          }}>
          <Image
            source={require("./../../assets/images/avatar-3.png")}
            style={styles.avatarImage}/>
          <View
            pointerEvents="box-none">
            <Text
              style={styles.nameText}>Tony Spark</Text>
            <Text
              style={styles.howDoYouGoToTheText}>How do you go to the bathroom in the suit?</Text>
          </View>
          <View
            pointerEvents="box-none"
            style={{
              flexDirection: "row",
              flex: 1,
              justifyContent: "flex-end",
              alignItems: "center",
            }}>
            <Image
              source={require("./../../assets/images/path-2.png")}
              style={styles.path2Image}/>
          </View>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  message: {
    backgroundColor: 'rgb(255, 255, 255)',
    height: 80,
    justifyContent: "center",
  },
  avatarImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 62,
    height: 62,
    marginLeft: 14,
  },
  nameText: {
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 9,
    marginTop: 23,
  },
  howDoYouGoToTheText: {
    color: 'rgb(148, 148, 148)',
    fontFamily: "Lato-Regular",
    fontSize: 10,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 9,
    marginTop: 4,
  },
  path2Image: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 7,
    height: 13,
    marginRight: 19,
  },
})
