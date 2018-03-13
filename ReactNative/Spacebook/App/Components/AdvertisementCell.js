//
//  AdvertisementCell.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Text, Image } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class AdvertisementCell extends React.Component {

  constructor(props) {
    super(props);
  }


  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.advertisementCell}>
        <View style={styles.bg} />
        <View pointerEvents="box-none" style={{
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <View pointerEvents="box-none" style={{
            flexDirection: "row",
            alignSelf: "stretch"
          }}>
            <Image source={require('../../Assets/images/bg-event-temp-1.png')} style={styles.bgEventTempIV} />
            <View pointerEvents="box-none">
              <Text style={styles.sprayAndPrayLabel}>{strings("TimelineVC.sprayAndPrayLabelText")}</Text>
              <Text style={styles.hullTattoosANewLabel}>{strings("TimelineVC.hullTattoosANewLabelText")}</Text>
              <Text style={styles.sponsoredContentLabel}>{strings("TimelineVC.sponsoredContentLabelText")}</Text>
            </View>
          </View>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  advertisementCell: {
    height: 123.00,
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 375.00,
    height: 123.00
  },
  bg: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    flex: 1,
    marginTop: 30.00
  },
  hullTattoosANewLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 15.00,
    marginTop: 1.00
  },
  sponsoredContentLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 15.00,
    marginTop: 6.00
  },
  sprayAndPrayLabel: {
    color: 'rgba(217, 103, 110, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 14.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 15.00,
    marginTop: 42.00
  },
  bgEventTempIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 93.00,
    marginTop: 30.00
  }
});