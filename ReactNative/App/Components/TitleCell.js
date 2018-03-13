//
//  TitleCell.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Text } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class TitleCell extends React.Component {

  constructor(props) {
    super(props);
  }


  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.titleCell}>
        <View pointerEvents="box-none" style={{
          justifyContent: "center",
          alignSelf: "center",
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <View pointerEvents="box-none" style={{
            flexDirection: "row",
            alignItems: "center"
          }}>
            <Text style={styles.todayLabel}>{strings("ProfilePhotosVC.todayLabelText")}</Text>
          </View>
        </View>
        <View pointerEvents="box-none" style={{
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <View style={styles.cellBounds} />
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  titleCell: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    justifyContent: "center",
    alignItems: "center"
  },
  todayLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 13.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 20.00
  },
  cellBounds: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    flex: 1
  }
});