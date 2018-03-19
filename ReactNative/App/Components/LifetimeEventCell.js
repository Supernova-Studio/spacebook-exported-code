//
//  LifetimeEventCell.js
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Text, Image } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class LifetimeEventCell extends React.Component {

  constructor(props) {
    super(props);
  }


  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.lifetimeEventCell}>
        <View style={styles.bg} />
        <View pointerEvents="box-none" style={{
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <Image source={require('../../Assets/images/icon-pluto.png')} style={styles.iconPlutoIV} />
          <Text numberOfLines={1} style={styles.plutoPostedANewLLabel}>{strings("TimelineVC.plutoPostedANewLLabelText")}</Text>
          <Text numberOfLines={1} style={styles.inAComplicatedRelLabel}>{strings("TimelineVC.inAComplicatedRelLabelText")}</Text>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  lifetimeEventCell: {
    height: 196.00,
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 375.00,
    height: 196.00
  },
  bg: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    flex: 1,
    marginTop: 29.00,
    marginBottom: 1.00
  },
  plutoPostedANewLLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Light",
    fontSize: 14.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "center",
    marginTop: 6.00
  },
  inAComplicatedRelLabel: {
    color: 'rgba(46, 46, 46, 1)',
    fontFamily: "Lato-Black",
    fontSize: 18.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center"
  },
  iconPlutoIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    width: 100.00,
    height: 100.00,
    marginTop: 14.00
  }
});