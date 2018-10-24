//
//  Profile.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, View, StyleSheet, Image, FlatList, TouchableOpacity } from "react-native"
import React from "react"
import LinearGradient from "react-native-linear-gradient"
import ViewTwo from "./ViewTwo"
import ViewThree from "./ViewThree"
import ViewTwoTwo from "./ViewTwoTwo"

export default class Profile extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state
    return {
        headerTransparent: true,
        headerBackground: <LinearGradient
          start={{
            x: -0.01,
            y: 0.51,
          }}
          end={{
            x: 1.01,
            y: 0.49,
          }}
          locations={[0, 1]}
          colors={['rgb(247, 132, 97)', 'rgb(139, 27, 139)']}
          style={styles.navigationBarGradient}/>,
        title: "Dr. What Profile",
        headerTintColor: 'rgb(255, 255, 255)',
        headerLeft: null,
        headerRight: <View
          style={styles.headerRightContainer}>
          <TouchableOpacity
            onPress={params.onLeftItemPressed ? params.onLeftItemPressed : () => null}
            style={styles.navigationBarItem}>
            <Text
              style={styles.navigationBarItemTitle}>Settings</Text>
          </TouchableOpacity>
        </View>,
        headerStyle: {
        },
      }
  }

  static tabBarItemOptions = ({ navigation }) => {
    return {
        tabBarLabel: "Profile",
        tabBarIcon: ({ iconTintColor }) => {
          return <Image
              source={require("./../../assets/images/active-icon-6.png")}/>
        },
      }
  }

  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.navigation.setParams({
      onLeftItemPressed: this.onLeftItemPressed,
    })
  }

  onLeftItemPressed = () => {
    const { navigate } = this.props.navigation
    
    navigate("ProfileSettings")
  }

  photosFlatListMockData = [{
    key: "1",
  }, {
    key: "2",
  }, {
    key: "3",
  }, {
    key: "4",
  }, {
    key: "5",
  }, {
    key: "6",
  }, {
    key: "7",
  }, {
    key: "8",
  }, {
    key: "9",
  }, {
    key: "10",
  }]

  renderPhotosFlatListCell = ({ item }) => {
    return <ViewTwo/>
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.profileView}>
        <View
          pointerEvents="box-none"
          style={styles.headerView}>
          <Image
            source={require("./../../assets/images/avatar-temp.png")}
            style={styles.avatarTempImage}/>
          <Text
            style={styles.drWhatText}>Dr. What</Text>
          <Text
            style={styles.phoneBoothAndroText}>1 Phone Booth, Andromeda</Text>
          <View
            pointerEvents="box-none"
            style={{
              flex: 1,
              flexDirection: "column",
              justifyContent: "flex-end",
            }}>
            <Text
              style={styles.travelerDreamerText}>Traveler, dreamer, showman. Occasionally gets into fight, not always survives.</Text>
          </View>
        </View>
        <View
          pointerEvents="box-none"
          style={styles.infoBarView}>
          <View
            pointerEvents="box-none"
            style={styles.group5View}>
            <Text
              style={styles.textText}>365</Text>
            <View
              pointerEvents="box-none"
              style={{
                flex: 1,
                flexDirection: "column",
                justifyContent: "flex-end",
              }}>
              <Text
                style={styles.photosText}>Photos</Text>
            </View>
          </View>
          <View
            pointerEvents="box-none"
            style={{
              position: "absolute",
              width: "100%",
              height: "100%",
              justifyContent: "center",
            }}>
            <View
              pointerEvents="box-none"
              style={styles.group6View}>
              <Text
                style={styles.kText}>58k</Text>
              <View
                pointerEvents="box-none"
                style={{
                  flex: 1,
                  flexDirection: "column",
                  justifyContent: "flex-end",
                }}>
                <Text
                  style={styles.stalkersText}>Stalkers</Text>
              </View>
            </View>
          </View>
          <View
            pointerEvents="box-none"
            style={{
              position: "absolute",
              width: "100%",
              height: "100%",
              justifyContent: "center",
            }}>
            <View
              pointerEvents="box-none"
              style={styles.group7View}>
              <Text
                style={styles.textTwoText}>326</Text>
              <View
                pointerEvents="box-none"
                style={{
                  flex: 1,
                  flexDirection: "column",
                  justifyContent: "flex-end",
                }}>
                <Text
                  style={styles.stalkingText}>Stalking</Text>
              </View>
            </View>
          </View>
        </View>
        <View
          pointerEvents="box-none"
          style={styles.galleryView}>
          <Text
            style={styles.latestPhotosText}>LATEST PHOTOS</Text>
          <View
            style={styles.photosFlatListViewWrapper}>
            <FlatList
              horizontal={true}
              renderItem={this.renderPhotosFlatListCell}
              data={this.photosFlatListMockData}
              style={styles.photosFlatList}/>
          </View>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  navigationBarGradient: {
    flex: 1,
  },
  navigationBarItemTitle: {
    color: 'rgb(255, 255, 255)',
  },
  headerRightContainer: {
    flexDirection: "row",
    marginRight: 8,
  },
  navigationBarItem: {
  },
  profileView: {
    backgroundColor: 'rgb(243, 242, 243)',
    flex: 1,
  },
  headerView: {
    backgroundColor: 'rgb(255, 255, 255)',
    height: 297,
    marginTop: 64,
  },
  infoBarView: {
    backgroundColor: 'rgb(250, 250, 250)',
    height: 84,
    justifyContent: "center",
  },
  galleryView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 2,
    marginTop: 20,
    marginRight: 2,
    marginBottom: 52,
    flex: 1,
  },
  avatarTempImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 124,
    height: 124,
    marginTop: 25,
    alignSelf: "center",
  },
  drWhatText: {
    color: 'rgb(4, 11, 22)',
    fontFamily: "Lato-Regular",
    fontSize: 26,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    lineHeight: 32,
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginTop: 11,
    alignSelf: "center",
  },
  phoneBoothAndroText: {
    color: 'rgb(4, 11, 22)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginTop: 5,
    alignSelf: "center",
  },
  travelerDreamerText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    lineHeight: 20,
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 300,
    marginBottom: 27,
    alignSelf: "center",
  },
  group5View: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 42,
    height: 44,
    marginLeft: 42,
  },
  group6View: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 43,
    height: 44,
    alignSelf: "center",
  },
  group7View: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 43,
    height: 44,
    marginRight: 41,
    alignSelf: "flex-end",
  },
  textText: {
    color: 'rgb(247, 132, 97)',
    fontFamily: "Lato-Bold",
    fontSize: 24,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
  },
  photosText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 2,
    marginRight: 2,
  },
  kText: {
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Bold",
    fontSize: 24,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 1,
  },
  stalkersText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
  },
  textTwoText: {
    color: 'rgb(139, 27, 139)',
    fontFamily: "Lato-Bold",
    fontSize: 24,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 1,
  },
  stalkingText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
  },
  latestPhotosText: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: -0.07,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    alignSelf: "center",
  },
  photosFlatList: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: "100%",
    height: "100%",
  },
  photosFlatListViewWrapper: {
    height: 122,
    marginTop: 13,
  },
})
