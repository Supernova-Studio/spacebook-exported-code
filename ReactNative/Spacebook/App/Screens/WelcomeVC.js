//
//  WelcomeVC
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { Animated, Easing, View, Text, Image, TouchableOpacity } from 'react-native';
import { strings } from './../Locales/i18n.js';
import { LinearGradient } from 'expo';

export default class WelcomeVC extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state;

    return {
      header: null,
      headerLeft: null,
      headerRight: null
    };
  };

  constructor(props) {
    super(props);

    this.state = {
      logoIVTranslateY: new Animated.Value(0),
      logoIVOpacity: new Animated.Value(1.00),
      logoIVRotate: new Animated.Value(-1),
      signUpScale: new Animated.Value(-1),
      signUpOpacity: new Animated.Value(-1),
      logInScale: new Animated.Value(-1),
      logInOpacity: new Animated.Value(-1)
    };
  }


  onLogInPressed = () => {
    const { navigate } = this.props.navigation;

    navigate('LoginVC', {});

    this.startAnimationThree();
  };

  onSignUpPressed = () => {
    const { navigate } = this.props.navigation;

    navigate('SignupVC', {});

    this.startAnimationTwo();
  };

  componentDidMount() {
    this.startAnimationOne();
  }

  render() {
    return (
      <LinearGradient end={{
        x: 0.69,
        y: -0.10
      }} start={{
        x: 0.31,
        y: 1.10
      }} colors={['rgba(247, 132, 97, 1)', 'rgba(139, 27, 139, 1)']} locations={[0.00, 1.00]} style={styles.welcomeLinearGradient}>
        <View style={styles.welcome}>
          <Animated.View pointerEvents="box-none" style={[{
              opacity: this.state.logoIVOpacity,
              transform: [{
                  translateY: this.state.logoIVTranslateY
                }, {
                  rotate: this.state.logoIVRotate.interpolate({
                    inputRange: [-1.00, 0.00, 0.80, 1.00],
                    outputRange: ["0deg", "-45deg", "-45deg", "0deg"]
                  })
                }]
            }, styles.logoIVAnimatableContainer]}>
            <Image source={require('../../Assets/images/logo.png')} style={styles.logoIV} />
          </Animated.View>
          <Text style={styles.spacebookLabel}>{strings("WelcomeVC.spacebookLabelText")}</Text>
          <Text style={styles.conquerTheStarsLabel}>{strings("WelcomeVC.conquerTheStarsLabelText")}</Text>
          <View pointerEvents="box-none" style={{
            justifyContent: "flex-end",
            flex: 1
          }}>
            <View pointerEvents="box-none" style={{
              flexDirection: "row",
              alignSelf: "stretch"
            }}>
              <Animated.View pointerEvents="box-none" style={[{
                  opacity: this.state.signUpOpacity.interpolate({
                    inputRange: [-1.00, 0.00, 0.60, 1.00],
                    outputRange: [1.00, 0, 1, 1]
                  }),
                  transform: [{
                      scale: this.state.signUpScale.interpolate({
                        inputRange: [-1.00, 0.00, 0.20, 0.40, 0.60, 0.80, 1.00],
                        outputRange: [1, 0.30, 1.10, 0.90, 1.03, 0.97, 1]
                      })
                    }]
                }, styles.signUpAnimatableContainer]}>
                <TouchableOpacity onPress={this.onSignUpPressed} style={styles.signUpTouchable}>
                  <Text style={styles.signUp}>{strings("WelcomeVC.signUpText")}</Text>
                </TouchableOpacity>
              </Animated.View>
              <View pointerEvents="box-none" style={{
                flexDirection: "row",
                justifyContent: "flex-end",
                flex: 1
              }}>
                <Animated.View pointerEvents="box-none" style={[{
                    opacity: this.state.logInOpacity.interpolate({
                      inputRange: [-1.00, 0.00, 0.60, 1.00],
                      outputRange: [1.00, 0, 1, 1]
                    }),
                    transform: [{
                        scale: this.state.logInScale.interpolate({
                          inputRange: [-1.00, 0.00, 0.20, 0.40, 0.60, 0.80, 1.00],
                          outputRange: [1, 0.30, 1.10, 0.90, 1.03, 0.97, 1]
                        })
                      }]
                  }, styles.logInAnimatableContainer]}>
                  <TouchableOpacity onPress={this.onLogInPressed} style={styles.logInTouchable}>
                    <Text style={styles.logIn}>{strings("WelcomeVC.logInText")}</Text>
                  </TouchableOpacity>
                </Animated.View>
              </View>
            </View>
            <Text style={styles.supernovaStuLabel}>{strings("WelcomeVC.supernovaStuLabelText")}</Text>
          </View>
        </View>
      </LinearGradient>
    );
  }

  startAnimationThree() {
    this.state.logInScale.setValue(0);

    this.state.logInOpacity.setValue(0);

    Animated.parallel([Animated.parallel([Animated.timing(this.state.logInScale, {
      duration: 1000,
      delay: 0,
      easing: Easing.bezier(0.21, 0.61, 0.35, 1.00),
      toValue: 1
    }), 
    Animated.timing(this.state.logInOpacity, {
      duration: 1000,
      delay: 0,
      easing: Easing.bezier(0.21, 0.61, 0.35, 1.00),
      toValue: 1
    })])]).start();
  }

  startAnimationTwo() {
    this.state.signUpScale.setValue(0);

    this.state.signUpOpacity.setValue(0);

    Animated.parallel([Animated.parallel([Animated.timing(this.state.signUpScale, {
      duration: 1000,
      delay: 0,
      easing: Easing.bezier(0.21, 0.61, 0.35, 1.00),
      toValue: 1
    }), 
    Animated.timing(this.state.signUpOpacity, {
      duration: 1000,
      delay: 0,
      easing: Easing.bezier(0.21, 0.61, 0.35, 1.00),
      toValue: 1
    })])]).start();
  }

  startAnimationOne() {
    this.state.logoIVTranslateY.setValue(500);

    this.state.logoIVOpacity.setValue(0);

    this.state.logoIVRotate.setValue(-45);

    this.state.logoIVRotate.setValue(0);

    Animated.parallel([Animated.parallel([Animated.timing(this.state.logoIVTranslateY, {
      duration: 1000,
      delay: 0,
      easing: Easing.bezier(0.12, 0.68, 0.58, 1.00),
      toValue: 0
    }), 
    Animated.timing(this.state.logoIVOpacity, {
      duration: 1000,
      delay: 0,
      easing: Easing.bezier(0.10, 0.64, 0.58, 1.00),
      toValue: 1
    }), 
    Animated.timing(this.state.logoIVRotate, {
      duration: 1000,
      delay: 0,
      easing: Easing.bezier(0.10, 0.63, 0.58, 1.00),
      toValue: 1
    })])]).start();
  }
}

const styles = StyleSheet.create({
  welcome: {
    flex: 1
  },
  welcomeLinearGradient: {
    flex: 1
  },
  spacebookLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 42.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    marginTop: 50.00
  },
  conquerTheStarsLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 18.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    width: 192.00,
    marginTop: 14.00
  },
  logoIV: {
    resizeMode: "center",
    width: "100%",
    height: "100%"
  },
  logoIVAnimatableContainer: {
    alignSelf: "center",
    width: 120.00,
    height: 120.00,
    marginTop: 100.00,
    backgroundColor: 'rgba(0, 0, 0, 0)',
    shadowOffset: {width: 0.0, height: 20.0},
    shadowColor: 'rgba(0, 0, 0, 0.20)',
    shadowOpacity: 0.00,
    shadowRadius: 25.00
  },
  logIn: {
    color: 'rgba(218, 103, 109, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    textShadowOffset: {width: 0.0, height: 20.0},
    textShadowColor: 'rgba(0, 0, 0, 0.20)',
    textShadowRadius: 25.00,
    justifyContent: "center",
    alignSelf: "stretch",
    width: "100%"
  },
  logInAnimatableContainer: {
    width: 148.00,
    height: 60.00,
    marginRight: 30.00,
    marginBottom: 81.00
  },
  logInTouchable: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    borderRadius: 2.00,
    shadowOffset: {width: 0.0, height: 20.0},
    shadowColor: 'rgba(0, 0, 0, 0.20)',
    shadowOpacity: 0.00,
    shadowRadius: 25.00,
    justifyContent: "center",
    width: "100%",
    height: "100%"
  },
  signUp: {
    color: 'rgba(217, 103, 110, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    textShadowOffset: {width: 0.0, height: 20.0},
    textShadowColor: 'rgba(0, 0, 0, 0.20)',
    textShadowRadius: 25.00,
    justifyContent: "center",
    alignSelf: "stretch",
    width: "100%"
  },
  signUpAnimatableContainer: {
    width: 148.00,
    height: 60.00,
    marginLeft: 30.00,
    marginBottom: 81.00
  },
  signUpTouchable: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    borderRadius: 2.00,
    shadowOffset: {width: 0.0, height: 20.0},
    shadowColor: 'rgba(0, 0, 0, 0.20)',
    shadowOpacity: 0.00,
    shadowRadius: 25.00,
    justifyContent: "center",
    width: "100%",
    height: "100%"
  },
  supernovaStuLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    marginBottom: 19.00
  }
});