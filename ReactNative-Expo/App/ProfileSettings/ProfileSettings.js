//
//  ProfileSettings.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { View, TouchableOpacity, Image, Switch, StyleSheet, Text } from "react-native"
import { LinearGradient } from "expo"
import React from "react"

export default class ProfileSettings extends React.Component {

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
        title: "Dr. Where settings",
        headerTintColor: 'rgb(255, 255, 255)',
        headerLeft: <View
          style={styles.headerLeftContainer}>
          <TouchableOpacity
            onPress={params.onGroupPressed ? params.onGroupPressed : () => null}
            style={styles.navigationBarItem}>
            <Image
              source={require("./../../assets/images/group-2.png")}
              style={styles.navigationBarItemIcon}/>
          </TouchableOpacity>
        </View>,
        headerRight: null,
        headerStyle: {
        },
      }
  }

  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.navigation.setParams({
      onGroupPressed: this.onGroupPressed,
    })
  }

  onSlideValueChanged = () => {
  }

  onGroupPressed = () => {
    this.props.navigation.goBack()
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.profileSettingsView}>
        <Image
          source={require("./../../assets/images/avatar-temp.png")}
          style={styles.avatarTempImage}/>
        <View
          pointerEvents="box-none"
          style={styles.informationView}>
          <View
            pointerEvents="box-none"
            style={styles.group7View}>
            <Text
              style={styles.detailsText}>DETAILS</Text>
          </View>
          <View
            pointerEvents="box-none"
            style={styles.group6View}>
            <View
              pointerEvents="box-none"
              style={styles.uiSettingsCellView}>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  alignSelf: "stretch",
                  alignItems: "center",
                }}>
                <Text
                  style={styles.labelText}>Name</Text>
                <View
                  pointerEvents="box-none"
                  style={{
                    flexDirection: "row",
                    flex: 1,
                    justifyContent: "flex-end",
                    alignItems: "center",
                  }}>
                  <Text
                    style={styles.textText}>Dr. Where</Text>
                  <Image
                    source={require("./../../assets/images/path-2.png")}
                    style={styles.path2Image}/>
                </View>
              </View>
            </View>
          </View>
          <View
            pointerEvents="box-none"
            style={styles.group5View}>
            <View
              pointerEvents="box-none"
              style={styles.uiSettingsCellTwoView}>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  alignSelf: "stretch",
                  alignItems: "center",
                }}>
                <Text
                  style={styles.labelTwoText}>Spacemail</Text>
                <View
                  pointerEvents="box-none"
                  style={{
                    flexDirection: "row",
                    flex: 1,
                    justifyContent: "flex-end",
                    alignItems: "center",
                  }}>
                  <Text
                    style={styles.textTwoText}>tardis~spacemail.io</Text>
                  <Image
                    source={require("./../../assets/images/path-2.png")}
                    style={styles.path2TwoImage}/>
                </View>
              </View>
            </View>
          </View>
          <View
            pointerEvents="box-none"
            style={styles.group4View}>
            <Text
              style={styles.informationText}>INFORMATION</Text>
          </View>
          <View
            pointerEvents="box-none"
            style={styles.group3View}>
            <View
              pointerEvents="box-none"
              style={{
                flexDirection: "row",
                alignSelf: "stretch",
                alignItems: "center",
              }}>
              <Text
                style={styles.labelThreeText}>Occasional advertisement</Text>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  flex: 1,
                  justifyContent: "flex-end",
                  alignItems: "center",
                }}>
                <Text
                  style={styles.textThreeText}>Yes</Text>
              </View>
            </View>
          </View>
          <View
            pointerEvents="box-none"
            style={styles.group2View}>
            <View
              pointerEvents="box-none"
              style={{
                flexDirection: "row",
                alignSelf: "stretch",
                alignItems: "center",
              }}>
              <Text
                style={styles.labelSixText}>Randomize timeline information</Text>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  flex: 1,
                  justifyContent: "flex-end",
                  alignItems: "center",
                }}>
                <Switch
                  style={styles.slideSwitch}/>
              </View>
            </View>
          </View>
          <View
            pointerEvents="box-none"
            style={styles.groupView}>
            <View
              pointerEvents="box-none"
              style={{
                flexDirection: "row",
                alignSelf: "stretch",
                alignItems: "center",
              }}>
              <Text
                style={styles.labelFourText}>Logged as</Text>
              <Text
                style={styles.labelFiveText}>Dr. Where</Text>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  flex: 1,
                  justifyContent: "flex-end",
                  alignItems: "center",
                }}>
                <Text
                  style={styles.textFourText}>Log out</Text>
              </View>
            </View>
          </View>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  navigationBarGradient: {
    flex: 1,
  },
  navigationBarItem: {
  },
  navigationBarItemIcon: {
    tintColor: 'rgb(255, 255, 255)',
  },
  headerLeftContainer: {
    flexDirection: "row",
    marginLeft: 8,
  },
  profileSettingsView: {
    backgroundColor: 'rgb(243, 242, 243)',
    flex: 1,
  },
  avatarTempImage: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 92,
    height: 92,
    marginTop: 88,
    alignSelf: "center",
  },
  informationView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 380,
    marginTop: 19,
  },
  group7View: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 47,
    height: 15,
    marginLeft: 20,
    justifyContent: "center",
  },
  group6View: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 60,
    marginTop: 10,
    justifyContent: "center",
  },
  group5View: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 60,
    justifyContent: "center",
  },
  group4View: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 84,
    height: 15,
    marginLeft: 20,
    marginTop: 30,
    justifyContent: "center",
  },
  group3View: {
    backgroundColor: 'rgb(255, 255, 255)',
    height: 60,
    marginTop: 10,
    justifyContent: "center",
  },
  group2View: {
    backgroundColor: 'rgb(255, 255, 255)',
    height: 60,
    justifyContent: "center",
  },
  groupView: {
    backgroundColor: 'rgb(255, 255, 255)',
    height: 60,
    justifyContent: "center",
  },
  detailsText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: -0.07,
  },
  uiSettingsCellView: {
    backgroundColor: 'rgb(255, 255, 255)',
    height: 60,
    justifyContent: "center",
  },
  labelText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 20,
    color: 'rgb(4, 11, 22)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  path2Image: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 7,
    height: 13,
    marginRight: 19,
  },
  textText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginRight: 14,
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Bold",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "right",
    letterSpacing: 0,
  },
  uiSettingsCellTwoView: {
    backgroundColor: 'rgb(255, 255, 255)',
    height: 60,
    justifyContent: "center",
  },
  labelTwoText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 20,
    color: 'rgb(4, 11, 22)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  path2TwoImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 7,
    height: 13,
    marginRight: 19,
  },
  textTwoText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginRight: 14,
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Bold",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "right",
    letterSpacing: 0,
  },
  informationText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 12,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: -0.07,
  },
  labelThreeText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 20,
    color: 'rgb(4, 11, 22)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  textThreeText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginRight: 20,
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "right",
    letterSpacing: 0,
  },
  labelFourText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    opacity: 0.4,
    marginLeft: 20,
    color: 'rgb(4, 11, 22)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  labelFiveText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 10,
    color: 'rgb(4, 11, 22)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  textFourText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginRight: 20,
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "right",
    letterSpacing: 0,
  },
  labelSixText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 20,
    color: 'rgb(4, 11, 22)',
    fontFamily: "Lato-Regular",
    fontSize: 16,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  slideSwitch: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginRight: 20,
  },
})
