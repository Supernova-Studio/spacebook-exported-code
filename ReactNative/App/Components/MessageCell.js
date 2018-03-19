//
//  MessageCell.js
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Image, Text } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class MessageCell extends React.Component {

  constructor(props) {
    super(props);
  }


  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.messageCell}>
        <View pointerEvents="box-none" style={{
          flexDirection: "row",
          alignSelf: "stretch"
        }}>
          <Image source={require('../../Assets/images/avatar-4.png')} style={styles.avatarIV} />
          <View pointerEvents="box-none">
            <Text numberOfLines={1} style={styles.nameLabel}>{strings("MessagesVC.nameLabelText")}</Text>
            <Text numberOfLines={1} style={styles.theWaterSoTestyYLabel}>{strings("MessagesVC.theWaterSoTestyYLabelText")}</Text>
          </View>
        </View>
        <View pointerEvents="box-none" style={{
          justifyContent: "center",
          alignSelf: "center",
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <View pointerEvents="box-none" style={{
            flexDirection: "row",
            alignItems: "center",
            justifyContent: "flex-end",
            alignSelf: "flex-end"
          }}>
            <Image source={require('../../Assets/images/path-2-2.png')} style={styles.path2IV} />
          </View>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  messageCell: {
    height: 80.00,
    backgroundColor: 'rgba(255, 255, 255, 1)',
    width: 375.00,
    height: 80.00
  },
  avatarIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 60.00,
    height: 60.00,
    marginLeft: 15.00,
    marginTop: 10.00
  },
  theWaterSoTestyYLabel: {
    color: 'rgba(148, 148, 148, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 10.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 10.00,
    marginTop: 1.00
  },
  nameLabel: {
    color: 'rgba(217, 103, 110, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 10.00,
    marginTop: 19.00
  },
  path2IV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "flex-end",
    width: 6.00,
    height: 12.00,
    marginRight: 20.00
  }
});