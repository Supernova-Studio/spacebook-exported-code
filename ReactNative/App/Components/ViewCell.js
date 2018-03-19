//
//  ViewCell.js
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Image } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class ViewCell extends React.Component {

  constructor(props) {
    super(props);
  }


  onViewCellPress = () => {
    const { navigate } = this.props.navigation;

    navigate('ProfilePhotosVC', {});
  };

  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.viewCell}>
        <Image source={require('../../Assets/images/photo-3.png')} style={styles.photo3IV} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  viewCell: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 123.00,
    height: 122.00
  },
  photo3IV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    flex: 1
  }
});