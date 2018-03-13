//
//  MessagesVC
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, FlatList, TouchableHightlight, Text, Image, TouchableOpacity, ImageBackground } from 'react-native';
import { Header } from 'react-navigation';
import { strings } from './../Locales/i18n.js';
import OnlinePersonCell from './../Components/OnlinePersonCell.js';
import MessageCell from './../Components/MessageCell.js';

export default class MessagesVC extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state;

    return {
      title: "Messages",
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
      tabBarLabel: "Messages",
      tabBarIcon: ({ iconTintColor }) => {
        return (
          <Image style={{
  width: 24,
  height: 24,
  tintColor: iconTintColor,
  resizeMode: "cover"
}} source={require('../../Assets/images/active-icon-10.png')} />
        );
      },
      headerLeft: null,
      headerRight: null
    };
  };

  constructor(props) {
    super(props);
  }


  renderMessageCell = ({ item }) => {
    return (
      <MessageCell />
    );
  };

  renderOnlinePersonCell = ({ item }) => {
    return (
      <OnlinePersonCell />
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
      <View style={styles.messages}>
        <FlatList renderItem={this.renderOnlinePersonCell} data={this.mockData} numColumns={3} style={styles.collectionView} />
        <FlatList renderItem={this.renderMessageCell} data={this.mockData} style={styles.tableView} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  messages: {
    backgroundColor: 'rgba(243, 242, 243, 1)',
    flex: 1
  },
  collectionView: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 75.00,
    marginLeft: 15.00,
    marginTop: 74.00,
    marginRight: 20.00
  },
  tableView: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 480.00,
    marginTop: 12.00
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