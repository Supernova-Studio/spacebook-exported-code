//
//  TitleTwo.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, View, StyleSheet } from "react-native"
import React from "react"

export default class TitleTwo extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.title}>
        <Text
          style={styles.tomorrowText}>TOMORROW</Text>
      </View>
  }
}

const styles = StyleSheet.create({
  title: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 37,
    width: 375,
    justifyContent: "center",
  },
  tomorrowText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 13,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: -0.08,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 20,
  },
})
