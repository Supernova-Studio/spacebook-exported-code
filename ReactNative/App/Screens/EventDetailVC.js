//
//  EventDetailVC
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, Image, Text, TouchableOpacity, ImageBackground } from 'react-native';
import { MapView } from 'expo';
import { Header } from 'react-navigation';
import { strings } from './../Locales/i18n.js';

export default class EventDetailVC extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state;

    return {
      title: "Guess who's back?",
      headerTintColor: "#FFFFFF",
      headerStyle: {
        backgroundColor: 'rgba(0, 0, 0, 0)',
        borderBottomWidth: 0
      },
      header: (headerProps) => {
        return (
          <ImageBackground source={require('../../Assets/images/background.png')} style={{
            position: "absolute",
            top: 0,
            left: 0,
            right: 0
          }}>
            <Header {...headerProps} />
          </ImageBackground>
        );
      },
      headerLeft: (
        <View style={{
          flexDirection: "row",
          marginLeft: 8
        }}>
          <TouchableOpacity onPress={params.onItemPressed ? params.onItemPressed : () => null}>
            <Image source={require('../../Assets/images/group-2.png')} />
          </TouchableOpacity>
        </View>
      ),
      headerRight: (
        <View style={{
          flexDirection: "row",
          marginRight: 8
        }}>
          <TouchableOpacity onPress={params.onItemTwoPressed ? params.onItemTwoPressed : () => null}>
            <Text style={styles.navigationBarItem}>Events</Text>
          </TouchableOpacity>
        </View>
      )
    };
  };

  constructor(props) {
    super(props);
  }


  onItemPressed = () => {

  };

  onItemTwoPressed = () => {

  };

  componentDidMount() {
    this.props.navigation.setParams({
      onItemPressed: this.onItemPressed,
      onItemTwoPressed: this.onItemTwoPressed
    });
  }

  render() {
    return (
      <View style={styles.eventDetail}>
        <MapView showsCompass={true} showsPointsOfInterest={true} showsScale={false} scrollEnabled={true} showsBuildings={true} showsTraffic={false} zoomEnabled={true} rotationEnabled={true} showsUserLocation={false} style={styles.mapView} />
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
              justifyContent: "center",
              alignSelf: "stretch"
            }}>
              <Image source={require('../../Assets/images/icon-event-area.png')} style={styles.iconEventAreaIV} />
            </View>
          </View>
        </View>
        <View pointerEvents="box-none" style={{
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <View style={styles.footer}>
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
                <Image source={require('../../Assets/images/avatar-5.png')} style={styles.avatarIV} />
                <View pointerEvents="box-none">
                  <Text numberOfLines={1} style={styles.guessWhoSBackLabel}>{strings("EventDetailVC.guessWhoSBackLabelText")}</Text>
                  <Text numberOfLines={1} style={styles.happeningIn20hBaLabel}>{strings("EventDetailVC.happeningIn20hBaLabelText")}</Text>
                  <Text numberOfLines={1} style={styles.eventPostedByLaikLabel}>{strings("EventDetailVC.eventPostedByLaikLabelText")}</Text>
                </View>
                <View pointerEvents="box-none" style={{
                  flexDirection: "row",
                  justifyContent: "flex-end",
                  flex: 1
                }}>
                  <Image source={require('../../Assets/images/group.png')} style={styles.groupIV} />
                </View>
              </View>
              <Text numberOfLines={1} style={styles.comingLabel}>{strings("EventDetailVC.comingLabelText")}</Text>
            </View>
          </View>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  eventDetail: {
    backgroundColor: 'rgba(243, 242, 243, 1)',
    flex: 1
  },
  mapView: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    flex: 1
  },
  iconEventAreaIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    width: 183.00,
    height: 183.00
  },
  footer: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 95.00
  },
  bg: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    flex: 1,
    marginTop: 15.00
  },
  guessWhoSBackLabel: {
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
  happeningIn20hBaLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 10.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 9.00,
    marginTop: 1.00
  },
  avatarIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 80.00,
    height: 80.00,
    marginLeft: 10.00
  },
  eventPostedByLaikLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 10.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 9.00,
    marginTop: 4.00
  },
  comingLabel: {
    color: 'rgba(139, 27, 139, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 14.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "flex-end",
    marginTop: 4.00,
    marginRight: 16.00
  },
  groupIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginTop: 27.00,
    marginRight: 30.00
  },
  navigationBar2NavigationBar: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 0.00,
    height: 0.00
  },
  navigationBarItem: {
    color: 'rgba(255, 255, 255, 1)',
    fontSize: 12.00
  }
});