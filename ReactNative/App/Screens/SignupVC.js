//
//  SignupVC
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, Text, TextInput, TouchableOpacity, Image, Switch } from 'react-native';
import { strings } from './../Locales/i18n.js';
import { LinearGradient } from 'expo';

export default class SignupVC extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state;

    return {
      headerTintColor: "#000000",
      headerStyle: {
        backgroundColor: 'rgba(0, 0, 0, 0)',
        position: "absolute",
        zIndex: 100,
        top: 0,
        left: 0,
        right: 0,
        borderBottomWidth: 0
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
      headerRight: null
    };
  };

  constructor(props) {
    super(props);
  }


  onSignUpPressed = () => {
    const { navigate } = this.props.navigation;

    navigate('TabBarNavigatorOneModal', {});
  };

  onLogInPressed = () => {
    const { navigate } = this.props.navigation;

    navigate('LoginVC', {});
  };

  onSwitchValueChanged = () => {

  };

  onItemPressed = () => {

  };

  componentDidMount() {
    this.props.navigation.setParams({
      onItemPressed: this.onItemPressed
    });
  }

  render() {
    return (
      <LinearGradient end={{
        x: 0.69,
        y: -0.10
      }} start={{
        x: 0.31,
        y: 1.10
      }} colors={['rgba(247, 132, 97, 1)', 'rgba(139, 27, 139, 1)']} locations={[0.00, 1.00]} style={styles.signupLinearGradient}>
        <View style={styles.signup}>
          <Text numberOfLines={1} style={styles.signUpLabel}>{strings("SignupVC.signUpLabelText")}</Text>
          <Text style={styles.itSFreeLabel}>{strings("SignupVC.itSFreeLabelText")}</Text>
          <View style={styles.signUpFields}>
            <TextInput placeholder={strings("SignupVC.yourNicknameTFText")} style={styles.yourNicknameTF} />
            <View style={styles.separator} />
            <TextInput placeholder={strings("SignupVC.yourSpacemailTFText")} style={styles.yourSpacemailTF} />
            <View style={styles.separatorTwo} />
            <TextInput secureTextEntry={true} placeholder={strings("SignupVC.passwordTFText")} style={styles.passwordTF} />
          </View>
          <View style={styles.tos}>
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
                <View pointerEvents="box-none" style={{
                  flexDirection: "row",
                  alignItems: "center"
                }}>
                  <Text numberOfLines={1} style={styles.iAgreeWithIntergaLabel}>{strings("SignupVC.iAgreeWithIntergaLabelText")}</Text>
                </View>
                <View pointerEvents="box-none" style={{
                  flexDirection: "row",
                  alignItems: "center",
                  justifyContent: "flex-end",
                  flex: 1
                }}>
                  <Switch onTintColor="rgba(152, 43, 135, 1)" style={styles.switchTwo} value={true} />
                </View>
              </View>
            </View>
          </View>
          <View pointerEvents="box-none" style={{
            justifyContent: "flex-end",
            flex: 1
          }}>
            <TouchableOpacity onPress={this.onSignUpPressed} style={styles.signUpTouchable}>
              <Text numberOfLines={1} style={styles.signUp}>{strings("SignupVC.signUpText")}</Text>
            </TouchableOpacity>
            <View style={styles.logIn}>
              <View pointerEvents="box-none" style={{
                flexDirection: "row",
                alignSelf: "stretch"
              }}>
                <Text numberOfLines={1} style={styles.alreadyGaveUpYourLabel}>{strings("SignupVC.alreadyGaveUpYourLabelText")}</Text>
                <TouchableOpacity onPress={this.onLogInPressed} style={styles.logInButtonTouchable}>
                  <Text numberOfLines={1} style={styles.logInButton}>{strings("SignupVC.logInButtonText")}</Text>
                </TouchableOpacity>
              </View>
            </View>
          </View>
        </View>
      </LinearGradient>
    );
  }
}

const styles = StyleSheet.create({
  signup: {
    flex: 1
  },
  signupLinearGradient: {
    flex: 1
  },
  signUpLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 42.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    marginTop: 79.00
  },
  itSFreeLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 18.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    marginTop: 14.00
  },
  signUpFields: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    borderRadius: 2.00,
    shadowOffset: {width: 0.0, height: 20.0},
    shadowColor: 'rgba(0, 0, 0, 0.20)',
    shadowOpacity: 0.00,
    shadowRadius: 25.00,
    alignSelf: "stretch",
    marginLeft: 20.00,
    marginTop: 65.00,
    marginRight: 20.00
  },
  separator: {
    backgroundColor: 'rgba(0, 0, 0, 1)',
    opacity: 0.10,
    alignSelf: "stretch",
    height: 1.00,
    marginTop: 15.00
  },
  separatorTwo: {
    backgroundColor: 'rgba(0, 0, 0, 1)',
    opacity: 0.10,
    alignSelf: "stretch",
    height: 1.00,
    marginTop: 15.00
  },
  yourNicknameTF: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "stretch",
    height: 23.00,
    marginLeft: 15.00,
    marginTop: 12.00,
    marginRight: 12.00
  },
  yourSpacemailTF: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "stretch",
    height: 23.00,
    marginLeft: 15.00,
    marginTop: 12.00,
    marginRight: 12.00
  },
  passwordTF: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "stretch",
    height: 23.00,
    marginLeft: 15.00,
    marginTop: 12.00,
    marginRight: 12.00,
    marginBottom: 15.00
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
    alignSelf: "stretch"
  },
  signUpTouchable: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    borderRadius: 2.00,
    shadowOffset: {width: 0.0, height: 20.0},
    shadowColor: 'rgba(0, 0, 0, 0.20)',
    shadowOpacity: 0.00,
    shadowRadius: 25.00,
    alignSelf: "stretch",
    height: 60.00,
    marginLeft: 20.00,
    marginRight: 20.00,
    marginBottom: 8.00,
    justifyContent: "center"
  },
  logIn: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    width: 241.00,
    height: 24.00,
    marginBottom: 16.00
  },
  alreadyGaveUpYourLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 1.00,
    marginTop: 1.00
  },
  logInButton: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    justifyContent: "center",
    alignSelf: "stretch"
  },
  logInButtonTouchable: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    height: 23.00,
    marginBottom: 1.00,
    justifyContent: "center"
  },
  tos: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 32.00,
    marginLeft: 25.00,
    marginTop: 15.00,
    marginRight: 25.00,
    justifyContent: "center",
    alignItems: "center"
  },
  iAgreeWithIntergaLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 13.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)'
  },
  switchTwo: {
    backgroundColor: 'rgba(0, 0, 0, 0)'
  },
  navigationBar1NavigationBar: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 0.00,
    height: 0.00
  },
  navigationBarItem: {
    color: 'rgba(254, 255, 255, 1)',
    fontSize: 12.00
  }
});