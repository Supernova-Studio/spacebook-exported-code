//
//  ProfilePhotos.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import Title from "./Title"
import React from "react"
import { Image, FlatList, View, StyleSheet, TouchableOpacity } from "react-native"
import ViewSeven from "./ViewSeven"
import TitleTwo from "./TitleTwo"
import ViewSix from "./ViewSix"
import LinearGradient from "react-native-linear-gradient"
import ViewEight from "./ViewEight"
import ViewFour from "./ViewFour"
import ViewFive from "./ViewFive"

export default class ProfilePhotos extends React.Component {

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
        title: "Dr. When photos",
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
        headerRight: null,
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
    })
  }

  onGroupPressed = () => {
    this.props.navigation.goBack()
  }

  galleryFlatListMockData = [{
    key: "1",
  }, {
    key: "2",
  }, {
    key: "3",
  }, {
    key: "4",
  }, {
    key: "5",
  }, {
    key: "6",
  }, {
    key: "7",
  }, {
    key: "8",
  }, {
    key: "9",
  }, {
    key: "10",
  }]

  renderGalleryFlatListCell = ({ item }) => {
    return <Title/>
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.profilePhotosView}>
        <View
          style={styles.galleryFlatListViewWrapper}>
          <FlatList
            horizontal={false}
            renderItem={this.renderGalleryFlatListCell}
            data={this.galleryFlatListMockData}
            style={styles.galleryFlatList}/>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  navigationBarGradient: {
    flex: 1,
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
  profilePhotosView: {
    backgroundColor: 'rgb(243, 242, 243)',
    flex: 1,
  },
  galleryFlatList: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: "100%",
    height: "100%",
  },
  galleryFlatListViewWrapper: {
    marginTop: 73,
    marginBottom: -1,
    flex: 1,
  },
})
