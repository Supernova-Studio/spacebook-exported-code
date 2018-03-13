//
//  ViewFourCell.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Image } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class ViewFourCell extends React.Component {

  constructor(props) {
    super(props);
  }


  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.viewCell}>
        <Image source={require('../../Assets/images/bg-photo.png')} style={styles.bgPhotoIV} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  viewCell: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 185.00,
    height: 184.00
  },
  bgPhotoIV: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    flex: 1
  }
});