//
//  EventCell.js
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Text, Image } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class EventCell extends React.Component {

  constructor(props) {
    super(props);
  }


  onEventCellPress = () => {
    const { navigate } = this.props.navigation;

    navigate('EventDetailVCModal', {});
  };

  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.eventCell}>
        <View style={styles.bgWhite} />
        <View pointerEvents="box-none" style={{
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <View style={styles.header}>
            <Image source={require('../../Assets/images/bg-event-temp.png')} style={styles.bgEventTempIV} />
            <View pointerEvents="box-none" style={{
              position: "absolute",
              width: "100%",
              height: "100%"
            }}>
              <View pointerEvents="box-none" style={{
                flexDirection: "row",
                alignSelf: "stretch"
              }}>
                <Text numberOfLines={1} style={styles.label}>{strings("TimelineVC.labelText")}</Text>
                <View pointerEvents="box-none" style={{
                  flexDirection: "row",
                  justifyContent: "flex-end",
                  flex: 1
                }}>
                  <Text numberOfLines={1} style={styles.guessWhoSBackLabel}>{strings("TimelineVC.guessWhoSBackLabelText")}</Text>
                </View>
              </View>
            </View>
          </View>
          <View style={styles.view}>
            <View style={styles.bgGray} />
            <View pointerEvents="box-none" style={{
              position: "absolute",
              width: "100%",
              height: "100%"
            }}>
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
                  <Text numberOfLines={1} style={styles.johnJoeAndJackLabel}>{strings("TimelineVC.johnJoeAndJackLabelText")}</Text>
                </View>
              </View>
            </View>
          </View>
        </View>
        <View pointerEvents="box-none" style={{
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <View style={styles.viewTwo}>
            <View pointerEvents="box-none" style={{
              flexDirection: "row",
              alignSelf: "stretch"
            }}>
              <Image source={require('../../Assets/images/avatar-5.png')} style={styles.avatarIV} />
              <View pointerEvents="box-none">
                <Text numberOfLines={1} style={styles.laikaCreatedANewLabel}>{strings("TimelineVC.laikaCreatedANewLabelText")}</Text>
                <Text numberOfLines={1} style={styles.backFromTheSpaceLabel}>{strings("TimelineVC.backFromTheSpaceLabelText")}</Text>
              </View>
            </View>
          </View>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  eventCell: {
    height: 336.00,
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 375.00,
    height: 336.00
  },
  bgWhite: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    flex: 1,
    marginTop: 31.00
  },
  view: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 52.00
  },
  bgGray: {
    backgroundColor: 'rgba(0, 0, 0, 1)',
    opacity: 0.02,
    flex: 1
  },
  johnJoeAndJackLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 20.00
  },
  header: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 200.00,
    marginTop: 84.00
  },
  bgEventTempIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    flex: 1
  },
  label: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 14.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 20.00,
    marginBottom: 24.00
  },
  guessWhoSBackLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: ".SFNSDisplay",
    fontSize: 24.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "right",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginRight: 20.00,
    marginBottom: 21.00
  },
  viewTwo: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 80.00,
    marginLeft: 10.00,
    marginTop: 16.00,
    marginRight: 9.00
  },
  laikaCreatedANewLabel: {
    color: 'rgba(15, 15, 15, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 14.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 9.00,
    marginTop: 20.00
  },
  backFromTheSpaceLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 10.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 9.00,
    marginTop: 1.00
  },
  avatarIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)'
  }
});