//
//  Advertisement.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Image, Text, View, StyleSheet } from "react-native"
import React from "react"

export default class Advertisement extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.advertisement}>
        <View
          pointerEvents="box-none"
          style={styles.bgView}>
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
          <View
            pointerEvents="box-none"
            style={{
              flexDirection: "row",
              alignSelf: "stretch",
            }}>
            <Image
              source={require("./../../assets/images/bg-event-temp.png")}
              style={styles.bgEventTempImage}/>
            <View
              pointerEvents="box-none">
              <Text
                style={styles.sprayAndPrayText}>Spray and Pray</Text>
              <Text
                style={styles.hullTattoosANewText}>Hull tattoos? A new trend to follow in 2050</Text>
              <Text
                style={styles.sponsoredContentText}>Sponsored content</Text>
            </View>
          </View>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  advertisement: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 123,
  },
  bgView: {
    backgroundColor: 'rgb(255, 255, 255)',
    marginTop: 30,
    flex: 1,
  },
  bgEventTempImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 93,
    height: 93,
    marginTop: 30,
  },
  sprayAndPrayText: {
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Bold",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "left",
    lineHeight: 20,
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 15,
    marginTop: 43,
  },
  hullTattoosANewText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 15,
    marginTop: 5,
    marginRight: 42,
  },
  sponsoredContentText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 15,
    marginTop: 10,
  },
})
