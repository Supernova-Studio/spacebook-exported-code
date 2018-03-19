//
//  TimelineVC
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, FlatList, TouchableHightlight, Text, Image, TouchableOpacity, ImageBackground } from 'react-native';
import { Header } from 'react-navigation';
import { strings } from './../Locales/i18n.js';
import NewsCell from './../Components/NewsCell.js';
import LifetimeEventCell from './../Components/LifetimeEventCell.js';
import EventCell from './../Components/EventCell.js';
import AdvertisementCell from './../Components/AdvertisementCell.js';

export default class TimelineVC extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state;

    return {
      title: "What's up?",
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
      tabBarLabel: "News",
      tabBarIcon: ({ iconTintColor }) => {
        return (
          <Image style={{
  width: 24,
  height: 24,
  tintColor: iconTintColor,
  resizeMode: "cover"
}} source={require('../../Assets/images/icon-news.png')} />
        );
      },
      headerLeft: null,
      headerRight: null
    };
  };

  constructor(props) {
    super(props);
  }


  renderNewsCell = ({ item }) => {
    return (
      <NewsCell />
    );
  };

  renderLifetimeEventCell = ({ item }) => {
    return (
      <LifetimeEventCell />
    );
  };

  renderEventCell = ({ item }) => {
    return (
      <EventCell />
    );
  };

  renderAdvertisementCell = ({ item }) => {
    return (
      <AdvertisementCell />
    );
  };

  mockData = [{
      key: "1"
    }, {
      key: "2"
    }, {
      key: "3"
    }, {
      key: "4"
    }, {
      key: "5"
    }, {
      key: "6"
    }, {
      key: "7"
    }, {
      key: "8"
    }, {
      key: "9"
    }, {
      key: "10"
    }];

  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.timeline}>
        <FlatList renderItem={this.renderNewsCell} data={this.mockData} style={styles.tableView} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  timeline: {
    backgroundColor: 'rgba(243, 242, 243, 1)',
    flex: 1
  },
  tableView: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    flex: 1,
    marginTop: 64.00
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