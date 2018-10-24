//
//  Welcome.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { View, TouchableOpacity, Animated, Image, StyleSheet, Text } from "react-native"
import { LinearGradient } from "expo"
import React from "react"

export default class Welcome extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state
    return {
        header: null,
        headerLeft: null,
        headerRight: null,
      }
  }

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  onSignUpPressed = () => {
    const { navigate } = this.props.navigation
    
    navigate("Signup")
  }

  onLogInPressed = () => {
    const { navigate } = this.props.navigation
    
    navigate("Login")
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
        style={styles.welcomeViewLinearGradient}>
        <View
          pointerEvents="box-none"
          style={styles.welcomeView}>
          <Animated.View
            style={styles.logoImageAnimated}>
            <Image
              source={require("./../../assets/images/logo.png")}
              style={styles.logoImage}/>
          </Animated.View>
          <Text
            style={styles.spacebookText}>Spacebook</Text>
          <Text
            style={styles.conquerTheStarsText}>Conquer the stars{"\
"}from behind the screen.</Text>
          <View
            pointerEvents="box-none"
            style={{
              flex: 1,
              flexDirection: "column",
              justifyContent: "flex-end",
            }}>
            <View
              pointerEvents="box-none"
              style={styles.viewView}>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  alignSelf: "stretch",
                }}>
                <TouchableOpacity
                  onPress={this.onSignUpPressed}
                  style={styles.signUpButton}>
                  <Image
                    source={require("./../../assets/images/icon-sign-up.png")}/>
                  <Text>SIGN UP</Text>
                </TouchableOpacity>
                <TouchableOpacity
                  onPress={this.onLogInPressed}
                  style={styles.logInButton}>
                  <Image
                    source={require("./../../assets/images/icon-log-in.png")}/>
                  <Text>LOG IN</Text>
                </TouchableOpacity>
              </View>
            </View>
            <Text
              style={styles.supernovaStudioText}>© 2050 Supernova Studio</Text>
          </View>
        </View>
      </LinearGradient>
  }
}

const styles = StyleSheet.create({
  welcomeView: {
    width: "100%",
    height: "100%",
  },
  welcomeViewLinearGradient: {
    flex: 1,
  },
  logoImageAnimated: {
    width: 120,
    height: 120,
    marginTop: 100,
    alignSelf: "center",
  },
  logoImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    shadowColor: 'rgba(0, 0, 0, 0.2)',
    shadowRadius: 25,
    shadowOpacity: 1,
    width: "100%",
    height: "100%",
  },
  spacebookText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginTop: 60,
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Bold",
    fontSize: 42,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    letterSpacing: -1,
    alignSelf: "center",
  },
  conquerTheStarsText: {
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
  viewView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 60,
    marginLeft: 30,
    marginRight: 30,
    marginBottom: 85,
  },
  supernovaStudioText: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    marginBottom: 20,
    color: 'rgb(255, 255, 255)',
    fontFamily: "Lato-Regular",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    letterSpacing: 0,
    alignSelf: "center",
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
    flex: 1,
  },
  logInButtonText: {
    color: 'rgb(218, 103, 109)',
    fontFamily: "Lato-Bold",
    fontSize: 15,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    lineHeight: 0,
    letterSpacing: 0,
  },
  logInButton: {
    backgroundColor: 'rgb(255, 255, 255)',
    borderRadius: 2,
    shadowColor: 'rgba(0, 0, 0, 0.2)',
    shadowRadius: 25,
    shadowOpacity: 1,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    height: 60,
    marginLeft: 19,
    flex: 1,
  },
  logInButtonImage: {
    resizeMode: "contain",
  },
})
