//
//  OnlinePersonCell.js
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Text, Image } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class OnlinePersonCell extends React.Component {

  constructor(props) {
    super(props);
  }


  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.onlinePersonCell}>
        <Image source={require('../../Assets/images/avatar-temp-4.png')} style={styles.avatarTempIV} />
        <Text numberOfLines={1} style={styles.mrsDoyaLabel}>{strings("MessagesVC.mrsDoyaLabelText")}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  onlinePersonCell: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 61.00,
    height: 75.00
  },
  mrsDoyaLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch"
  },
  avatarTempIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch"
  }
});