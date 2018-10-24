//
//  MessageSix.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { Image, View, Text, StyleSheet } from "react-native"

export default class MessageSix extends React.Component {

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
            source={require("./../../assets/images/avatar-temp-2.png")}
            style={styles.avatarImage}/>
          <View
            pointerEvents="box-none">
            <Text
              style={styles.nameText}>Mrs. Doya</Text>
            <Text
              style={styles.weVeBeenForcedToText}>We’ve been forced to add you a new friend</Text>
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
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 9,
    marginTop: 23,
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  weVeBeenForcedToText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 9,
    marginTop: 4,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Bold",
    fontSize: 10,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "left",
    letterSpacing: 0,
  },
  path2Image: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 7,
    height: 13,
    marginRight: 19,
  },
})
