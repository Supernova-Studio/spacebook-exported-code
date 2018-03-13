//
//  ProfileVC
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, Image, Text, FlatList, TouchableHightlight, TouchableOpacity, ImageBackground } from 'react-native';
import { Header } from 'react-navigation';
import { strings } from './../Locales/i18n.js';
import ViewCell from './../Components/ViewCell.js';

export default class ProfileVC extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state;

    return {
      title: "Dr. What Profile",
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
      tabBarLabel: "Profile",
      tabBarIcon: ({ iconTintColor }) => {
        return (
          <Image style={{
  width: 24,
  height: 24,
  tintColor: iconTintColor,
  resizeMode: "cover"
}} source={require('../../Assets/images/active-icon.png')} />
        );
      },
      headerLeft: null,
      headerRight: (
        <View style={{
          flexDirection: "row",
          marginRight: 8
        }}>
          <TouchableOpacity onPress={params.onItemPressed ? params.onItemPressed : () => null}>
            <Text style={styles.navigationBarItem}>Settings</Text>
          </TouchableOpacity>
        </View>
      )
    };
  };

  constructor(props) {
    super(props);
  }


  renderViewCell = ({ item }) => {
    return (
      <ViewCell />
    );
  };

  onItemPressed = () => {
    const { navigate } = this.props.navigation;

    navigate('ProfileSettingsVC', {});
  };

  mockData = [{
      key: "1"
    }, {
      key: "2"
    }, {
      key: "3"
    }, {
      key: "4"
    }, {
      key: "5"
    }, {
      key: "6"
    }, {
      key: "7"
    }, {
      key: "8"
    }, {
      key: "9"
    }, {
      key: "10"
    }];

  componentDidMount() {
    this.props.navigation.setParams({
      onItemPressed: this.onItemPressed
    });
  }

  render() {
    return (
      <View style={styles.profile}>
        <View style={styles.header}>
          <Image source={require('../../Assets/images/avatar-temp.png')} style={styles.avatarTempIV} />
          <Text style={styles.drWhatLabel}>{strings("ProfileVC.drWhatLabelText")}</Text>
          <Text style={styles.phoneBoothAndroLabel}>{strings("ProfileVC.phoneBoothAndroLabelText")}</Text>
          <Text style={styles.travelerDreamerLabel}>{strings("ProfileVC.travelerDreamerLabelText")}</Text>
        </View>
        <View style={styles.infoBar}>
          <View pointerEvents="box-none" style={{
            flexDirection: "row",
            alignSelf: "stretch"
          }}>
            <View style={styles.group5}>
              <Text style={styles.labelTwo}>{strings("ProfileVC.labelTwoText")}</Text>
              <Text style={styles.photosLabel}>{strings("ProfileVC.photosLabelText")}</Text>
            </View>
            <View style={styles.group6}>
              <Text style={styles.kLabel}>{strings("ProfileVC.kLabelText")}</Text>
              <Text style={styles.stalkersLabel}>{strings("ProfileVC.stalkersLabelText")}</Text>
            </View>
            <View style={styles.group7}>
              <Text style={styles.label}>{strings("ProfileVC.labelText")}</Text>
              <View pointerEvents="box-none" style={{
                flexDirection: "row",
                alignSelf: "stretch"
              }} />
              <View pointerEvents="box-none" style={{
                position: "absolute",
                width: "100%",
                height: "100%"
              }}>
                <Text style={styles.stalkingLabel}>{strings("ProfileVC.stalkingLabelText")}</Text>
              </View>
            </View>
          </View>
        </View>
        <View style={styles.gallery}>
          <Text style={styles.latestPhotosLabel}>{strings("ProfileVC.latestPhotosLabelText")}</Text>
          <FlatList renderItem={this.renderViewCell} data={this.mockData} numColumns={3} style={styles.collectionView} />
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  profile: {
    backgroundColor: 'rgba(243, 242, 243, 1)',
    flex: 1
  },
  header: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    alignSelf: "stretch",
    marginTop: 64.00
  },
  avatarTempIV: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    width: 140.00,
    height: 140.00,
    marginTop: 12.00
  },
  phoneBoothAndroLabel: {
    color: 'rgba(4, 11, 22, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "center"
  },
  drWhatLabel: {
    color: 'rgba(4, 11, 22, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 26.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    marginTop: 4.00
  },
  travelerDreamerLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 14.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    marginTop: 12.00,
    marginBottom: 27.00
  },
  infoBar: {
    backgroundColor: 'rgba(250, 250, 250, 1)',
    alignSelf: "stretch",
    height: 84.00
  },
  group7: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 58.00,
    marginLeft: 60.00,
    marginTop: 12.00,
    marginRight: 40.00
  },
  stalkingLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    width: 49.00,
    height: 19.00,
    left: 4.00,
    top: 36.00,
    position: "absolute"
  },
  label: {
    color: 'rgba(139, 27, 139, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 24.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center"
  },
  group6: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 61.00,
    marginTop: 12.00
  },
  stalkersLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "center"
  },
  kLabel: {
    color: 'rgba(217, 103, 110, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 24.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center"
  },
  group5: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 58.00,
    marginLeft: 40.00,
    marginTop: 12.00
  },
  photosLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "center",
    marginTop: 3.00
  },
  labelTwo: {
    color: 'rgba(247, 132, 97, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 24.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center"
  },
  gallery: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    marginLeft: 2.00,
    marginRight: 2.00
  },
  latestPhotosLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "center",
    marginTop: 4.00
  },
  collectionView: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 123.00,
    marginTop: 9.00
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