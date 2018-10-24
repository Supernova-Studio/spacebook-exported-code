//
//  EventDetail.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, View, StyleSheet, Image, MapView, TouchableOpacity } from "react-native"
import React from "react"
import LinearGradient from "react-native-linear-gradient"

export default class EventDetail extends React.Component {

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
        title: "Guess who's back?",
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
        headerRight: <View
          style={styles.headerRightContainer}>
          <TouchableOpacity
            onPress={params.onLeftItemPressed ? params.onLeftItemPressed : () => null}
            style={styles.navigationBarItem}>
            <Text
              style={styles.navigationBarItemTitle}>Events</Text>
          </TouchableOpacity>
        </View>,
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
      onLeftItemPressed: this.onLeftItemPressed,
    })
  }

  onGroupPressed = () => {
    this.props.navigation.goBack()
  }

  onLeftItemPressed = () => {
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.eventDetailView}>
        <MapView
          style={styles.bgMapTempMapView}/>
        <View
          pointerEvents="box-none"
          style={{
            position: "absolute",
            width: "100%",
            height: "100%",
            justifyContent: "center",
          }}>
          <Image
            source={require("./../../assets/images/icon-event-area.png")}
            style={styles.iconEventAreaImage}/>
        </View>
        <View
          pointerEvents="box-none"
          style={{
            position: "absolute",
            width: "100%",
            height: "100%",
          }}>
          <View
            pointerEvents="box-none"
            style={styles.footerView}>
            <View
              pointerEvents="box-none"
              style={styles.bgView}>
              <View
                pointerEvents="box-none"
                style={{
                  flex: 1,
                  flexDirection: "column",
                  justifyContent: "flex-end",
                }}/>
            </View>
            <View
              pointerEvents="box-none"
              style={{
                position: "absolute",
                width: "100%",
                height: "100%",
              }}>
              <View
                pointerEvents="box-none"
                style={{
                  flexDirection: "row",
                  alignSelf: "stretch",
                }}>
                <Image
                  source={require("./../../assets/images/avatar-2.png")}
                  style={styles.avatarImage}/>
                <View
                  pointerEvents="box-none">
                  <Text
                    style={styles.guessWhoSBackText}>Guess who’s back?</Text>
                  <Text
                    style={styles.happeningIn20hBaText}>Happening in 20h, Bajkonur</Text>
                  <Text
                    style={styles.eventPostedByLaikText}>Event posted by Laika</Text>
                </View>
                <View
                  pointerEvents="box-none"
                  style={{
                    flexDirection: "row",
                    flex: 1,
                    justifyContent: "flex-end",
                  }}>
                  <View
                    pointerEvents="box-none"
                    style={styles.comingView}>
                    <Image
                      source={require("./../../assets/images/group.png")}
                      style={styles.groupImage}/>
                    <View
                      pointerEvents="box-none"
                      style={{
                        flex: 1,
                        flexDirection: "column",
                        justifyContent: "flex-end",
                      }}>
                      <Text
                        style={styles.comingText}>Coming</Text>
                    </View>
                  </View>
                </View>
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
  navigationBarItemTitle: {
    color: 'rgb(255, 255, 255)',
  },
  headerRightContainer: {
    flexDirection: "row",
    marginRight: 8,
  },
  headerLeftContainer: {
    flexDirection: "row",
    marginLeft: 8,
  },
  navigationBarItem: {
  },
  navigationBarItemIcon: {
    tintColor: 'rgb(255, 255, 255)',
  },
  eventDetailView: {
    backgroundColor: 'rgb(243, 242, 243)',
    flex: 1,
  },
  bgMapTempMapView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    flex: 1,
  },
  iconEventAreaImage: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 185,
    height: 185,
    alignSelf: "center",
  },
  footerView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    height: 95,
  },
  bgView: {
    backgroundColor: 'rgb(255, 255, 255)',
    height: 80,
    marginTop: 15,
  },
  avatarImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 82,
    height: 82,
    marginLeft: 9,
    marginTop: -1,
  },
  comingView: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 48,
    height: 48,
    marginTop: 27,
    marginRight: 20,
  },
  groupImage: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: 29,
    height: 29,
    marginLeft: 9,
    marginRight: 9,
  },
  comingText: {
    color: 'rgb(139, 27, 139)',
    fontFamily: "Lato-Regular",
    fontSize: 14,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    letterSpacing: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
  },
})
