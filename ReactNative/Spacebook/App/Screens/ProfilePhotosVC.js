//
//  ProfilePhotosVC
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
import TitleCell from './../Components/TitleCell.js';
import ViewFourCell from './../Components/ViewFourCell.js';

export default class ProfilePhotosVC extends React.Component {

  static navigationOptions = ({ navigation }) => {
    const { params = {} } = navigation.state;

    return {
      title: "Dr. When photos",
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


  renderTitleCell = ({ item }) => {
    return (
      <TitleCell />
    );
  };

  renderViewFourCell = ({ item }) => {
    return (
      <ViewFourCell />
    );
  };

  onItemPressed = () => {

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
    this.props.navigation.setParams({
      onItemPressed: this.onItemPressed
    });
  }

  render() {
    return (
      <View style={styles.profilePhotos}>
        <FlatList renderItem={this.renderTitleCell} data={this.mockData} numColumns={3} style={styles.collectionView} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  profilePhotos: {
    backgroundColor: 'rgba(243, 242, 243, 1)',
    flex: 1
  },
  collectionView: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    flex: 1,
    marginTop: 73.00
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