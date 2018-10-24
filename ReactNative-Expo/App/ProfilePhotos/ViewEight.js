//
//  ViewEight.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { Image, View, StyleSheet } from "react-native"

export default class ViewEight extends React.Component {

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
          source={require("./../../assets/images/photo-3.png")}
          style={styles.bgPhotoImage}/>
      </View>
  }
}

const styles = StyleSheet.create({
  view: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 184,
    width: 184,
  },
  bgPhotoImage: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 184,
    height: 184,
    flex: 1,
  },
})
