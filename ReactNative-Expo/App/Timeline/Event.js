//
//  Event.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { Image, View, Text, StyleSheet } from "react-native"

export default class Event extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.event}>
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
          <View
            pointerEvents="box-none"
            style={styles.headerView}>
            <Image
              source={require("./../../assets/images/bg-event-temp-2.png")}
              style={styles.bgEventTempImage}/>
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
                <Text
                  style={styles.textText}>3/13/2050</Text>
                <View
                  pointerEvents="box-none"
                  style={{
                    flexDirection: "row",
                    flex: 1,
                    justifyContent: "flex-end",
                  }}>
                  <Text
                    style={styles.guessWhoSBackText}>Guess who’s back?</Text>
                </View>
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
                source={require("./../../assets/images/avatar-2.png")}
                style={styles.avatarImage}/>
              <View
                pointerEvents="box-none">
                <Text
                  style={styles.laikaCreatedANewText}>Laika created a new event near you</Text>
                <Text
                  style={styles.backFromTheSpaceText}>Back from the space trip! Come everyone.</Text>
              </View>
            </View>
          </View>
          <View
            pointerEvents="box-none"
            style={{
              flex: 1,
              flexDirection: "column",
              justifyContent: "flex-end",
            }}>
            <View
              pointerEvents="box-none"
              style={styles.viewTwoView}>
              <Text
                style={styles.johnJoeAndJackText}>John, Joe and Jack & 18k are coming</Text>
            </View>
          </View>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  event: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 336,
  },
  bgWhiteView: {
    backgroundColor: 'rgb(255, 255, 255)',
    marginTop: 31,
    flex: 1,
  },
  headerView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginTop: 84,
    marginBottom: 52,
    flex: 1,
  },
  viewView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 82,
    marginLeft: 9,
    marginTop: 15,
    marginRight: 16,
  },
  viewTwoView: {
    backgroundColor: 'rgb(250, 250, 250)',
    height: 53.19,
    justifyContent: "center",
  },
  bgEventTempImage: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 375,
    height: 200,
    flex: 1,
  },
  textText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 20,
    marginBottom: 24,
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Regular",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  guessWhoSBackText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginRight: 20,
    marginBottom: 22,
    color: 'rgb(255, 255, 255)',
    fontFamily: ".SFNSDisplay",
    fontSize: 24,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "right",
    lineHeight: 24,
    letterSpacing: 0,
    paddingTop: 5,
  },
  avatarImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 82,
    height: 82,
  },
  laikaCreatedANewText: {
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
  backFromTheSpaceText: {
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
  johnJoeAndJackText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 20,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
})
