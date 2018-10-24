//
//  App.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import ProfilePhotos from "./App/ProfilePhotos/ProfilePhotos"
import Messages from "./App/Messages/Messages"
import Signup from "./App/Signup/Signup"
import React from "react"
import Welcome from "./App/Welcome/Welcome"
import Login from "./App/Login/Login"
import { createBottomTabNavigator } from "react-navigation"
import Timeline from "./App/Timeline/Timeline"
import { createStackNavigator } from "react-navigation"
import Profile from "./App/Profile/Profile"
import EventDetail from "./App/EventDetail/EventDetail"
import ProfileSettings from "./App/ProfileSettings/ProfileSettings"
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

  render() {
    return <RootNavigator/>
  }
}
