//
//  Title.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { View, Text, StyleSheet } from "react-native"

export default class Title extends React.Component {

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
          style={styles.todayText}>TODAY</Text>
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
  todayText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 20,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 13,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: -0.08,
  },
})
