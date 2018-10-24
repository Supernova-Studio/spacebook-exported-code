//
//  OnlinePerson.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Image, Text, View, StyleSheet } from "react-native"
import React from "react"

export default class OnlinePerson extends React.Component {

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
          source={require("./../../assets/images/avatar-temp-2.png")}
          style={styles.avatarTempImage}/>
        <View
          pointerEvents="box-none"
          style={{
            flex: 1,
            flexDirection: "column",
            justifyContent: "flex-end",
          }}>
          <Text
            style={styles.mrsDoyaText}>Mrs. Doya</Text>
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
  avatarTempImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 62,
    height: 62,
    marginLeft: -1,
    marginTop: -1,
    marginRight: -1,
  },
  mrsDoyaText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 3,
    marginRight: 2,
  },
})
