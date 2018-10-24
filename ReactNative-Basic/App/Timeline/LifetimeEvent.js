//
//  LifetimeEvent.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Image, Text, View, StyleSheet } from "react-native"
import React from "react"

export default class LifetimeEvent extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.lifetimeEvent}>
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
          <Image
            source={require("./../../assets/images/avatarastronaut.png")}
            style={styles.avatarAstronautImage}/>
          <Text
            style={styles.plutoPostedANewLText}>Pluto posted a new life event</Text>
          <Text
            style={styles.inAComplicatedRelText}>In a complicated relationship</Text>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  lifetimeEvent: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 196,
  },
  bgView: {
    backgroundColor: 'rgb(255, 255, 255)',
    marginTop: 29,
    marginBottom: 1,
    flex: 1,
  },
  avatarAstronautImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 94,
    height: 94,
    marginTop: 18,
  },
  plutoPostedANewLText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Light",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginTop: 12,
  },
  inAComplicatedRelText: {
    color: 'rgb(46, 46, 46)',
    fontFamily: "Lato-Black",
    fontSize: 18,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginTop: 2,
  },
})
