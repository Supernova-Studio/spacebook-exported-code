//
//  Login.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, View, StyleSheet, Image, TouchableOpacity, TextInput } from "react-native"
import React from "react"
import LinearGradient from "react-native-linear-gradient"

export default class Login extends React.Component {

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

  onLoginPressed = () => {
    const { navigate } = this.props.navigation
    
    navigate("TwoComponent")
  }

  onForgotYourPasswordPressed = () => {
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
        style={styles.loginViewLinearGradient}>
        <View
          pointerEvents="box-none"
          style={styles.loginView}>
          <Text
            style={styles.logInText}>Log in</Text>
          <Text
            style={styles.welcomeBackText}>Welcome back.{"\
"}The galaxy awaits you.</Text>
          <View
            pointerEvents="box-none"
            style={styles.loginFieldsView}>
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
              style={styles.yourPasswordTextInput}/>
          </View>
          <View
            pointerEvents="box-none"
            style={{
              flex: 1,
              flexDirection: "column",
              justifyContent: "flex-end",
            }}>
            <TouchableOpacity
              onPress={this.onLoginPressed}
              style={styles.loginButton}>
              <Image
                source={require("./../../assets/images/icon-log-in.png")}/>
              <Text>LOG IN</Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={this.onForgotYourPasswordPressed}
              style={styles.forgotYourPasswordButton}>
              <Text>Forgot your password?</Text>
            </TouchableOpacity>
          </View>
        </View>
      </LinearGradient>
  }
}

const styles = StyleSheet.create({
  headerLeftContainer: {
    flexDirection: "row",
    marginLeft: 8,
  },
  navigationBarItemIcon: {
    tintColor: 'rgb(254, 255, 255)',
  },
  navigationBarItem: {
  },
  loginView: {
    width: "100%",
    height: "100%",
  },
  loginViewLinearGradient: {
    flex: 1,
  },
  logInText: {
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Bold",
    fontSize: 42,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    letterSpacing: -1,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginTop: 114,
    alignSelf: "center",
  },
  welcomeBackText: {
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Regular",
    fontSize: 18,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginTop: 20,
    alignSelf: "center",
  },
  loginFieldsView: {
    backgroundColor: 'rgb(255, 255, 255)',
    borderRadius: 2,
    shadowColor: 'rgba(0, 0, 0, 0.2)',
    shadowRadius: 25,
    shadowOpacity: 1,
    height: 101,
    marginLeft: 20,
    marginTop: 70,
    marginRight: 20,
  },
  loginButtonText: {
    color: 'rgb(217, 103, 110)',
    fontFamily: "Lato-Bold",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    lineHeight: 0,
    letterSpacing: 0,
  },
  loginButtonImage: {
    resizeMode: "contain",
  },
  loginButton: {
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
    marginBottom: 11,
  },
  forgotYourPasswordButtonText: {
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Regular",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
  },
  forgotYourPasswordButtonImage: {
    resizeMode: "contain",
  },
  forgotYourPasswordButton: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    width: 150,
    height: 18,
    marginBottom: 19,
    alignSelf: "center",
  },
  yourNicknameTextInput: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    lineHeight: 0,
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 15,
    marginTop: 14,
    marginRight: 14,
  },
  separatorView: {
    backgroundColor: 'rgb(0, 0, 0)',
    opacity: 0.1,
    height: 1,
    marginTop: 16,
  },
  yourPasswordTextInput: {
    color: 'rgb(0, 0, 0)',
    fontFamily: "Lato-Regular",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    lineHeight: 0,
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginLeft: 15,
    marginTop: 14,
    marginRight: 14,
  },
})
