//
//  ProfileSettingsVC
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, Image, Text, Switch, TouchableOpacity, ImageBackground } from 'react-native';
import { Header } from 'react-navigation';
import { strings } from './../Locales/i18n.js';

export default class ProfileSettingsVC extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state;

    return {
      title: "Dr. Where settings",
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


  onSlideValueChanged = () => {

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
      <View style={styles.profileSettings}>
        <Image source={require('../../Assets/images/avatar-temp-1.png')} style={styles.avatarTempIV} />
        <View style={styles.information}>
          <Text style={styles.detailsLabel}>{strings("ProfileSettingsVC.detailsLabelText")}</Text>
          <View style={styles.group6}>
            <View style={styles.uiSettingsCell}>
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
                    <Text style={styles.label}>{strings("ProfileSettingsVC.labelText")}</Text>
                  </View>
                  <View pointerEvents="box-none" style={{
                    flexDirection: "row",
                    alignItems: "center",
                    justifyContent: "flex-end",
                    flex: 1
                  }}>
                    <Image source={require('../../Assets/images/path-2.png')} style={styles.path2IV} />
                    <Text style={styles.textLabel}>{strings("ProfileSettingsVC.textLabelText")}</Text>
                  </View>
                </View>
              </View>
            </View>
          </View>
          <View style={styles.group5}>
            <View style={styles.uiSettingsCellTwo}>
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
                    <Text style={styles.labelFive}>{strings("ProfileSettingsVC.labelFiveText")}</Text>
                  </View>
                  <View pointerEvents="box-none" style={{
                    flexDirection: "row",
                    alignItems: "center",
                    justifyContent: "flex-end",
                    flex: 1
                  }}>
                    <Image source={require('../../Assets/images/path-2.png')} style={styles.path2IVTwo} />
                    <Text style={styles.textLabelFour}>{strings("ProfileSettingsVC.textLabelFourText")}</Text>
                  </View>
                </View>
              </View>
            </View>
          </View>
          <Text style={styles.informationLabel}>{strings("ProfileSettingsVC.informationLabelText")}</Text>
          <View style={styles.group3}>
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
                  <Text style={styles.labelTwo}>{strings("ProfileSettingsVC.labelTwoText")}</Text>
                </View>
                <View pointerEvents="box-none" style={{
                  flexDirection: "row",
                  alignItems: "center",
                  justifyContent: "flex-end",
                  flex: 1
                }}>
                  <Text style={styles.textLabelTwo}>{strings("ProfileSettingsVC.textLabelTwoText")}</Text>
                </View>
              </View>
            </View>
          </View>
          <View style={styles.group2}>
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
                  <Text style={styles.labelSix}>{strings("ProfileSettingsVC.labelSixText")}</Text>
                </View>
                <View pointerEvents="box-none" style={{
                  flexDirection: "row",
                  alignItems: "center",
                  justifyContent: "flex-end",
                  flex: 1
                }}>
                  <Switch onTintColor="rgba(145, 33, 138, 1)" style={styles.slideSwitch} value={true} />
                </View>
              </View>
            </View>
          </View>
          <View style={styles.group}>
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
                  <Text style={styles.labelFour}>{strings("ProfileSettingsVC.labelFourText")}</Text>
                  <Text style={styles.labelThree}>{strings("ProfileSettingsVC.labelThreeText")}</Text>
                </View>
                <View pointerEvents="box-none" style={{
                  flexDirection: "row",
                  alignItems: "center",
                  justifyContent: "flex-end",
                  flex: 1
                }}>
                  <Text style={styles.textLabelThree}>{strings("ProfileSettingsVC.textLabelThreeText")}</Text>
                </View>
              </View>
            </View>
          </View>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  profileSettings: {
    backgroundColor: 'rgba(243, 242, 243, 1)',
    flex: 1
  },
  information: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    marginTop: 10.00
  },
  group6: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 60.00,
    marginTop: 6.00
  },
  uiSettingsCell: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    alignSelf: "stretch",
    height: 60.00,
    justifyContent: "center",
    alignItems: "center"
  },
  path2IV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 6.00,
    height: 12.00,
    marginRight: 20.00
  },
  textLabel: {
    color: 'rgba(217, 103, 110, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "right",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginRight: 15.00
  },
  label: {
    color: 'rgba(4, 11, 22, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 20.00
  },
  group3: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    alignSelf: "stretch",
    height: 60.00,
    marginTop: 6.00,
    justifyContent: "center",
    alignItems: "center"
  },
  textLabelTwo: {
    color: 'rgba(217, 103, 110, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "right",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginRight: 20.00
  },
  labelTwo: {
    color: 'rgba(4, 11, 22, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 20.00
  },
  group: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    alignSelf: "stretch",
    height: 60.00,
    justifyContent: "center",
    alignItems: "center"
  },
  textLabelThree: {
    color: 'rgba(217, 103, 110, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "right",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginRight: 20.00
  },
  labelThree: {
    color: 'rgba(4, 11, 22, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 8.00
  },
  labelFour: {
    color: 'rgba(4, 11, 22, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 20.00
  },
  group5: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 60.00
  },
  uiSettingsCellTwo: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    alignSelf: "stretch",
    height: 60.00,
    justifyContent: "center",
    alignItems: "center"
  },
  path2IVTwo: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 6.00,
    marginRight: 20.00
  },
  textLabelFour: {
    color: 'rgba(217, 103, 110, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "right",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginRight: 15.00
  },
  labelFive: {
    color: 'rgba(4, 11, 22, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 20.00
  },
  detailsLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 20.00
  },
  informationLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 20.00,
    marginTop: 30.00
  },
  group2: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    alignSelf: "stretch",
    height: 60.00,
    justifyContent: "center",
    alignItems: "center"
  },
  labelSix: {
    color: 'rgba(4, 11, 22, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 16.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 20.00
  },
  slideSwitch: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginRight: 20.00
  },
  avatarTempIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "center",
    width: 100.00,
    height: 100.00,
    marginTop: 89.00
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