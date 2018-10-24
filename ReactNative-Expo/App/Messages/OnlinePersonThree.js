//
//  OnlinePersonThree.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { Image, View, Text, StyleSheet } from "react-native"

export default class OnlinePersonThree extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.onlinePerson}>
        <Image
          source={require("./../../assets/images/ui-avatar-small-copy-2.png")}
          style={styles.uiAvatarSmallCopy2Image}/>
        <View
          pointerEvents="box-none"
          style={{
            flex: 1,
            flexDirection: "column",
            justifyContent: "flex-end",
          }}>
          <Text
            style={styles.gideonText}>Gideon</Text>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  onlinePerson: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 75,
    width: 60,
  },
  uiAvatarSmallCopy2Image: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 62,
    height: 62,
    marginLeft: -1,
    marginTop: -1,
    marginRight: -1,
  },
  gideonText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 11,
    marginRight: 10,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
  },
})
