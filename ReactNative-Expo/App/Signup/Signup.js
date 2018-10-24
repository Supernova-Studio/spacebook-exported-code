//
//  Signup.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { View, TouchableOpacity, Image, Switch, StyleSheet, Text, TextInput } from "react-native"
import { LinearGradient } from "expo"
import React from "react"

export default class Signup extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state
    return {
        headerTransparent: true,
        headerTintColor: 'rgb(0, 0, 0)',
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
          elevation: 0,
          borderBottomWidth: 0,
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

  onSwitchValueChanged = () => {
  }

  onSignUpPressed = () => {
    const { navigate } = this.props.navigation
    
    navigate("TwoComponent")
  }

  onLogInPressed = () => {
    const { navigate } = this.props.navigation
    
    navigate("Login")
  }

  onGroupPressed = () => {
    this.props.navigation.goBack()
  }

  render() {
    return <LinearGradient
        start={{
          x: 0.31,
          y: 1.1,
        }}
        end={{
          x: 0.69,
          y: -0.1,
        }}
        locations={[0, 1]}
        colors={['rgb(247, 132, 97)', 'rgb(139, 27, 139)']}
        style={styles.signupViewLinearGradient}>
        <View
          pointerEvents="box-none"
          style={styles.signupView}>
          <Text
            style={styles.signUpText}>Sign up</Text>
          <Text
            style={styles.itSFreeText}>It’s free and always will be.{"\
"}Because advertisement.</Text>
          <View
            pointerEvents="box-none"
            style={styles.signUpFieldsView}>
            <TextInput
              style={styles.yourNicknameTextInput}/>
            <View
              pointerEvents="box-none"
              style={styles.separatorView}>
              <View
                pointerEvents="box-none"
                style={{
                  flex: 1,
                  flexDirection: "column",
                  justifyContent: "flex-end",
                }}/>
            </View>
            <TextInput
              style={styles.yourSpacemailTextInput}/>
            <View
              pointerEvents="box-none"
              style={styles.separatorTwoView}>
              <View
                pointerEvents="box-none"
                style={{
                  flex: 1,
                  flexDirection: "column",
                  justifyContent: "flex-end",
                }}/>
            </View>
            <TextInput
              style={styles.passwordTextInput}/>
          </View>
          <View
            pointerEvents="box-none"
            style={styles.tosView}>
            <View
              pointerEvents="box-none"
              style={{
                flexDirection: "row",
                alignSelf: "stretch",
                alignItems: "center",
              }}>
              <Text
                style={styles.iAgreeWithIntergaText}>I agree with intergalatic terms and conditions</Text>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  flex: 1,
                  justifyContent: "flex-end",
                  alignItems: "center",
                }}>
                <Switch
                  style={styles.switchSwitch}/>
              </View>
            </View>
          </View>
          <View
            pointerEvents="box-none"
            style={{
              flex: 1,
              flexDirection: "column",
              justifyContent: "flex-end",
            }}>
            <TouchableOpacity
              onPress={this.onSignUpPressed}
              style={styles.signUpButton}>
              <Image
                source={require("./../../assets/images/icon-sign-up.png")}/>
              <Text>SIGN UP</Text>
            </TouchableOpacity>
            <View
              pointerEvents="box-none"
              style={styles.logInView}>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  alignSelf: "stretch",
                  alignItems: "center",
                }}>
                <Text
                  style={styles.alreadyGaveUpYourText}>Already gave up your soul? </Text>
                <View
                  pointerEvents="box-none"
                  style={{
                    flexDirection: "row",
                    flex: 1,
                    justifyContent: "flex-end",
                    alignItems: "center",
                  }}>
                  <TouchableOpacity
                    onPress={this.onLogInPressed}
                    style={styles.logInButton}>
                    <Text>Log In!</Text>
                  </TouchableOpacity>
                </View>
              </View>
            </View>
          </View>
        </View>
      </LinearGradient>
  }
}

const styles = StyleSheet.create({
  navigationBarItemIcon: {
    tintColor: 'rgb(254, 255, 255)',
  },
  navigationBarItem: {
  },
  headerLeftContainer: {
    flexDirection: "row",
    marginLeft: 8,
  },
  signupViewLinearGradient: {
    flex: 1,
  },
  signupView: {
    width: "100%",
    height: "100%",
  },
  signUpText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginTop: 89,
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Bold",
    fontSize: 42,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    letterSpacing: -1,
    alignSelf: "center",
  },
  itSFreeText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginTop: 20,
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Regular",
    fontSize: 18,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    alignSelf: "center",
  },
  signUpFieldsView: {
    backgroundColor: 'rgb(255, 255, 255)',
    borderRadius: 2,
    shadowColor: 'rgba(0, 0, 0, 0.2)',
    shadowRadius: 25,
    shadowOpacity: 1,
    height: 152,
    marginLeft: 20,
    marginTop: 70,
    marginRight: 20,
  },
  tosView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 32,
    marginLeft: 25,
    marginTop: 15,
    marginRight: 25,
    justifyContent: "center",
  },
  signUpButtonImage: {
    resizeMode: "contain",
  },
  signUpButtonText: {
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Bold",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    lineHeight: 0,
    letterSpacing: 0,
  },
  signUpButton: {
    backgroundColor: 'rgb(255, 255, 255)',
    borderRadius: 2,
    shadowColor: 'rgba(0, 0, 0, 0.2)',
    shadowRadius: 25,
    shadowOpacity: 1,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    height: 60,
    marginLeft: 20,
    marginRight: 20,
    marginBottom: 10,
  },
  logInView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 232,
    height: 18,
    marginBottom: 20,
    alignSelf: "center",
    justifyContent: "center",
  },
  yourNicknameTextInput: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 15,
    marginTop: 14,
    marginRight: 17,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    lineHeight: 0,
    letterSpacing: 0,
  },
  separatorView: {
    backgroundColor: 'rgb(0, 0, 0)',
    opacity: 0.1,
    height: 1,
    marginTop: 16,
  },
  yourSpacemailTextInput: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 15,
    marginTop: 14,
    marginRight: 17,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    lineHeight: 0,
    letterSpacing: 0,
  },
  separatorTwoView: {
    backgroundColor: 'rgb(0, 0, 0)',
    opacity: 0.1,
    height: 1,
    marginTop: 16,
  },
  passwordTextInput: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 15,
    marginTop: 14,
    marginRight: 17,
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    lineHeight: 0,
    letterSpacing: 0,
  },
  iAgreeWithIntergaText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Regular",
    fontSize: 13,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
  },
  switchSwitch: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
  },
  alreadyGaveUpYourText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 4,
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Regular",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
  },
  logInButtonText: {
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Bold",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    letterSpacing: 0,
  },
  logInButton: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    width: 47,
    height: 18,
  },
  logInButtonImage: {
    resizeMode: "contain",
  },
})
