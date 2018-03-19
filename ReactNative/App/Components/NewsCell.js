//
//  NewsCell.js
//  Spacebook
//
//  Created by [Author].
//  Copyright © 2017 Supernova. All rights reserved.
//

import React from 'react';
import { StyleSheet } from 'react-native';
import { View, TouchableHightlight, Text, Image } from 'react-native';
import { strings } from './../Locales/i18n.js';

export default class NewsCell extends React.Component {

  constructor(props) {
    super(props);
  }


  componentDidMount() {

  }

  render() {
    return (
      <View style={styles.newsCell}>
        <View style={styles.bgWhite} />
        <View pointerEvents="box-none" style={{
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <Image source={require('../../Assets/images/bg-news-temp-2.png')} style={styles.bgNewsTempIV} />
          <Text style={styles.melonHuskLaunchesLabel}>{strings("TimelineVC.melonHuskLaunchesLabelText")}</Text>
          <View style={styles.view}>
            <View style={styles.bgGray} />
            <View pointerEvents="box-none" style={{
              position: "absolute",
              width: "100%",
              height: "100%"
            }}>
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
                    <Image source={require('../../Assets/images/icon-like.png')} style={styles.iconLikeIV} />
                    <Text numberOfLines={1} style={styles.spacewoman185kLiLabel}>{strings("TimelineVC.spacewoman185kLiLabelText")}</Text>
                  </View>
                  <View pointerEvents="box-none" style={{
                    flexDirection: "row",
                    alignItems: "center",
                    justifyContent: "flex-end",
                    flex: 1
                  }}>
                    <Text numberOfLines={1} style={styles.kCommentsLabel}>{strings("TimelineVC.kCommentsLabelText")}</Text>
                    <Image source={require('../../Assets/images/icon-comment.png')} style={styles.iconCommentIV} />
                  </View>
                </View>
              </View>
            </View>
          </View>
        </View>
        <View pointerEvents="box-none" style={{
          position: "absolute",
          width: "100%",
          height: "100%"
        }}>
          <View style={styles.viewTwo}>
            <View pointerEvents="box-none" style={{
              flexDirection: "row",
              alignSelf: "stretch"
            }}>
              <Image source={require('../../Assets/images/icon-avatar.png')} style={styles.iconAvatarIV} />
              <View pointerEvents="box-none">
                <Text numberOfLines={1} style={styles.spacecrunchLabel}>{strings("TimelineVC.spacecrunchLabelText")}</Text>
                <Text numberOfLines={1} style={styles.today145PmLabel}>{strings("TimelineVC.today145PmLabelText")}</Text>
              </View>
            </View>
          </View>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  newsCell: {
    height: 419.00,
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 375.00,
    height: 419.00
  },
  bgWhite: {
    backgroundColor: 'rgba(255, 255, 255, 1)',
    flex: 1,
    marginTop: 30.00
  },
  view: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 59.00,
    marginTop: 21.00
  },
  bgGray: {
    backgroundColor: 'rgba(250, 250, 250, 1)',
    flex: 1
  },
  spacewoman185kLiLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 5.00
  },
  kCommentsLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 12.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginRight: 14.00
  },
  iconLikeIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 20.00
  },
  iconCommentIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginRight: 5.00
  },
  bgNewsTempIV: {
    resizeMode: "stretch",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 200.00,
    marginTop: 80.00
  },
  viewTwo: {
    backgroundColor: 'rgba(0, 0, 0, 0)',
    alignSelf: "stretch",
    height: 80.00,
    marginLeft: 10.00,
    marginTop: 15.00,
    marginRight: 14.00
  },
  spacecrunchLabel: {
    color: 'rgba(15, 15, 15, 1)',
    fontFamily: "Lato-Bold",
    fontSize: 14.00,
    fontStyle: "normal",
    fontWeight: "bold",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 9.00,
    marginTop: 20.00
  },
  today145PmLabel: {
    color: 'rgba(0, 0, 0, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 10.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    opacity: 0.40,
    marginLeft: 9.00,
    marginTop: 1.00
  },
  iconAvatarIV: {
    resizeMode: "center",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    width: 80.00
  },
  melonHuskLaunchesLabel: {
    color: 'rgba(7, 7, 7, 1)',
    fontFamily: "Lato-Regular",
    fontSize: 14.00,
    fontStyle: "normal",
    fontWeight: "normal",
    textAlign: "left",
    backgroundColor: 'rgba(0, 0, 0, 0)',
    marginLeft: 20.00,
    marginTop: 17.00
  }
});