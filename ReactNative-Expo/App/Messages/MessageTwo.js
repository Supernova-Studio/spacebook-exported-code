//
//  MessageTwo.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { Image, View, Text, StyleSheet } from "react-native"

export default class MessageTwo extends React.Component {

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
          <View
            pointerEvents="box-none"
            style={styles.avatarView}>
            <View
              pointerEvents="box-none"
              style={styles.uiAvatarSmallCopyView}>
              <Image
                source={require("./../../assets/images/avatarastronaut-2.png")}
                style={styles.avatarAstronautImage}/>
            </View>
          </View>
          <View
            pointerEvents="box-none">
            <Text
              style={styles.nameText}>Fox Murder</Text>
            <Text
              style={styles.iMTellingYouTheText}>I’m telling you, they are amongst us! #scared</Text>
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
  avatarView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 60,
    height: 60,
    marginLeft: 15,
    justifyContent: "center",
  },
  nameText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 10,
    marginTop: 23,
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  iMTellingYouTheText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 10,
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
  uiAvatarSmallCopyView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 60,
    justifyContent: "center",
  },
  avatarAstronautImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 62,
    height: 62,
    marginLeft: -1,
    marginRight: -1,
  },
})
