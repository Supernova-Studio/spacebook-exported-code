//
//  ViewTwoTwo.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Image, View, StyleSheet } from "react-native"
import React from "react"

export default class ViewTwoTwo extends React.Component {

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
          source={require("./../../assets/images/photo-2.png")}
          style={styles.photo2Image}/>
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
  photo2Image: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 122,
    height: 122,
  },
})
