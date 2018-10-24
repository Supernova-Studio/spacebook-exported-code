//
//  ViewThree.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { Image, View, StyleSheet } from "react-native"

export default class ViewThree extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.view}>
        <Image
          source={require("./../../assets/images/photo-1.png")}
          style={styles.photo1Image}/>
      </View>
  }
}

const styles = StyleSheet.create({
  view: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 122,
    width: 122,
    justifyContent: "center",
  },
  photo1Image: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 122,
    height: 122,
  },
})
