//
//  App.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import ProfilePhotos from "./App/ProfilePhotos/ProfilePhotos"
import Signup from "./App/Signup/Signup"
import Timeline from "./App/Timeline/Timeline"
import { createBottomTabNavigator } from "react-navigation"
import { Font, DangerZone } from "expo"
import Messages from "./App/Messages/Messages"
import ProfileSettings from "./App/ProfileSettings/ProfileSettings"
import Login from "./App/Login/Login"
import React from "react"
import Welcome from "./App/Welcome/Welcome"
import EventDetail from "./App/EventDetail/EventDetail"
import { createStackNavigator } from "react-navigation"
import Profile from "./App/Profile/Profile"
const PushRouteOne = createStackNavigator({
  Welcome: {
    screen: Welcome,
  },
  Login: {
    screen: Login,
  },
  Signup: {
    screen: Signup,
  },
}, {
  initialRouteName: "Welcome",
})
const PushRouteTwo = createStackNavigator({
  Timeline: {
    screen: Timeline,
  },
}, {
  initialRouteName: "Timeline",
})
const PushRouteThree = createStackNavigator({
  Messages: {
    screen: Messages,
  },
}, {
  initialRouteName: "Messages",
})
const PushRouteFour = createStackNavigator({
  Profile: {
    screen: Profile,
  },
  ProfileSettings: {
    screen: ProfileSettings,
  },
  ProfilePhotos: {
    screen: ProfilePhotos,
  },
}, {
  initialRouteName: "Profile",
})
const TwoComponent = createBottomTabNavigator({
  PushRouteTwo: {
    screen: PushRouteTwo,
  },
  PushRouteThree: {
    screen: PushRouteThree,
  },
  PushRouteFour: {
    screen: PushRouteFour,
  },
}, {
  tabBarPosition: "bottom",
  animationEnabled: true,
  tabBarOptions: {
    showIcon: true,
    activeTintColor: 'rgb(139, 27, 139)',
    inactiveTintColor: 'rgb(139, 27, 139)',
    indicatorStyle: {
      backgroundColor: "transparent",
    },
    style: {
      backgroundColor: 'rgb(248, 248, 248)',
    },
  },
  navigationOptions: ({ navigation }) => {
    const { routeName } = navigation.state
    
    switch (routeName) {
      case "PushRouteTwo":
        return Timeline.tabBarItemOptions(navigation)
      case "PushRouteThree":
        return Messages.tabBarItemOptions(navigation)
      case "PushRouteFour":
        return Profile.tabBarItemOptions(navigation)
    }
  },
})
const PushRouteFive = createStackNavigator({
  EventDetail: {
    screen: EventDetail,
  },
}, {
  initialRouteName: "EventDetail",
})
const RootNavigator = createStackNavigator({
  PushRouteOne: {
    screen: PushRouteOne,
  },
  TwoComponent: {
    screen: TwoComponent,
  },
  PushRouteFive: {
    screen: PushRouteFive,
  },
}, {
  mode: "modal",
  headerMode: "none",
  initialRouteName: "PushRouteOne",
})


export default class App extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      fontsReady: false,
    }
  }

  componentDidMount() {
    this.initProjectFonts()
  }

  async initProjectFonts() {
    await Font.loadAsync({
      "Lato-Black": require("./assets/fonts/LatoBlack.ttf"),
      "Lato-Regular": require("./assets/fonts/LatoRegular.ttf"),
      "Lato-Bold": require("./assets/fonts/LatoBold.ttf"),
      "Lato-Light": require("./assets/fonts/LatoLight.ttf"),
      ".SFNSDisplay": require("./assets/fonts/SFNSDisplay.ttf"),
    })
    this.setState({
      fontsReady: true,
    })
  }

  render() {
    if (!this.state.fontsReady) { return (<Expo.AppLoading/>); }
    return <RootNavigator/>
  }
}
