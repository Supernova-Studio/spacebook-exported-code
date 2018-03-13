//
//  LoginVC
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, Text, TextInput, TouchableOpacity, Image } from 'react-native';
import { strings } from './../Locales/i18n.js';
import { LinearGradient } from 'expo';

export default class LoginVC extends React.Component {

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
            <Image source={require('../../Assets/images/group.png')} />
          </TouchableOpacity>
        </View>
      ),
      headerRight: null
    };
  };

  constructor(props) {
    super(props);
  }


  onLoginPressed = () => {
    const { navigate } = this.props.navigation;

    navigate('TabBarNavigatorOneModal', {});
  };

  onForgotYourPasswordPressed = () => {

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
      }} colors={['rgba(247, 132, 97, 1)', 'rgba(139, 27, 139, 1)']} locations={[0.00, 1.00]} style={styles.loginLinearGradient}>
        <View style={styles.login}>
          <Text style={styles.logInLabel}>{strings("LoginVC.logInLabelText")}</Text>
          <Text style={styles.welcomeBackLabel}>{strings("LoginVC.welcomeBackLabelText")}</Text>
          <View style={styles.loginFields}>
            <TextInput placeholder={strings("LoginVC.yourNicknameTFText")} style={styles.yourNicknameTF} />
            <View style={styles.separator} />
            <TextInput secureTextEntry={true} placeholder={strings("LoginVC.yourPasswordTFText")} style={styles.yourPasswordTF} />
          </View>
          <View pointerEvents="box-none" style={{
            justifyContent: "flex-end",
            flex: 1
          }}>
            <TouchableOpacity onPress={this.onLoginPressed} style={styles.loginTwoTouchable}>
              <Text style={styles.loginTwo}>{strings("LoginVC.loginTwoText")}</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={this.onForgotYourPasswordPressed} style={styles.forgotYourPasswordButtonTouchable}>
              <Text style={styles.forgotYourPasswordButton}>{strings("LoginVC.forgotYourPasswordButtonText")}</Text>
            </TouchableOpacity>
          </View>
        </View>
      </LinearGradient>
    );
  }
}

const styles = StyleSheet.create({
  login: {
    flex: 1
  },
  loginLinearGradient: {
    flex: 1
  },
  logInLabel: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 42.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    marginTop: 104.00
  },
  welcomeBackLabel: {
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
  loginFields: {
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
    marginLeft: 15.00,
    marginTop: 12.00,
    marginRight: 14.00
  },
  yourPasswordTF: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    alignSelf: "stretch",
    marginLeft: 15.00,
    marginTop: 12.00,
    marginRight: 14.00,
    marginBottom: 15.00
  },
  loginTwo: {
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
  loginTwoTouchable: {
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
    marginBottom: 7.00,
    justifyContent: "center"
  },
  forgotYourPasswordButton: {
    color: 'rgba(255, 255, 255, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 15.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "center",
    justifyContent: "center",
    alignSelf: "stretch"
  },
  forgotYourPasswordButtonTouchable: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    height: 23.00,
    marginBottom: 18.00,
    justifyContent: "center"
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