import React from 'react';
import { StackNavigator } from 'react-navigation';
import WelcomeVC from './App/Screens/WelcomeVC';
import LoginVC from './App/Screens/LoginVC';
import SignupVC from './App/Screens/SignupVC';
import TimelineVC from './App/Screens/TimelineVC';
import ProfileVC from './App/Screens/ProfileVC';
import ProfilePhotosVC from './App/Screens/ProfilePhotosVC';
import ProfileSettingsVC from './App/Screens/ProfileSettingsVC';
import MessagesVC from './App/Screens/MessagesVC';
import EventDetailVC from './App/Screens/EventDetailVC';
import { TabNavigator } from 'react-navigation';
import { Font } from 'expo';
import I18n from 'react-native-i18n';

MultiNavigator = (routeConfigs, navigatorConfig) => {
  const CardStackNavigator = StackNavigator(routeConfigs, navigatorConfig);

  const modalRouteConfig = {};

  const routeNames = Object.keys(routeConfigs);

  

  for (let i = 0; i < routeNames.length; i++) {

     modalRouteConfig[`${routeNames[i]}Modal`] = routeConfigs[routeNames[i]];

  }

  

  const MultiNavigator = StackNavigator({

     CardStackNavigator: { screen: CardStackNavigator },

     ...modalRouteConfig

  }, {

     mode: 'modal'

  });

  

  return MultiNavigator;
};
const TabBarNavigatorOne = TabNavigator({
  TimelineVC: {
    screen: TimelineVC
  },
  ProfileVC: {
    screen: ProfileVC
  },
  MessagesVC: {
    screen: MessagesVC
  }
}, {
  tabBarPosition: "bottom",
  animationEnabled: true,
  tabBarOptions: {
    style: {
      backgroundColor: 'rgba(248, 248, 248, 1)'
    },
    activeTintColor: 'rgba(145, 34, 138, 1)',
    inactiveTintColor: 'rgba(177, 177, 177, 1)'
  }
});
const RootStack = MultiNavigator({
  WelcomeVC: {
    screen: WelcomeVC
  },
  LoginVC: {
    screen: LoginVC
  },
  SignupVC: {
    screen: SignupVC
  },
  ProfilePhotosVC: {
    screen: ProfilePhotosVC
  },
  ProfileSettingsVC: {
    screen: ProfileSettingsVC
  },
  EventDetailVC: {
    screen: EventDetailVC
  },
  TabBarNavigatorOne: {
    screen: TabBarNavigatorOne
  }
}, {
  initialRouteName: "WelcomeVC"
});

export default class App extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      fontsReady: false,
      localeReady: false
    };
  }


  async initProjectFonts() {
    await Font.loadAsync({ 'Lato-Bold': require('./Assets/fonts/Lato-Bold.ttf'), 'Lato-Black': require('./Assets/fonts/Lato-Black.ttf'), 'Lato-Regular': require('./Assets/fonts/Lato-Regular.ttf'), 'Lato-Light': require('./Assets/fonts/Lato-Light.ttf'), '.SFNSDisplay': require('./Assets/fonts/SFNSDisplay.ttf') });

    this.setState({
      fontsReady: true
    });
  }

  async initLocale() {
    I18n.locale = await Expo.Util.getCurrentLocaleAsync();

    this.setState({
      localeReady: true
    });
  }

  componentDidMount() {
    this.initProjectFonts();

    this.initLocale();
  }

  render() {
    if (!this.state.fontsReady || !this.state.localeReady) { return (<Expo.AppLoading/>); }

    return (
      <RootStack />
    );
  }
}