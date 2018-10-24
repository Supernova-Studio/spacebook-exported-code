//
//  ProfilePhotos.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Image, FlatList, View, TouchableOpacity, StyleSheet } from "react-native"
import ViewFour from "./ViewFour"
import ViewSix from "./ViewSix"
import ViewSeven from "./ViewSeven"
import ViewEight from "./ViewEight"
import ViewFive from "./ViewFive"
import Title from "./Title"
import TitleTwo from "./TitleTwo"
import React from "react"
import { LinearGradient } from "expo"

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
  navigationBarItem: {
  },
  navigationBarItemIcon: {
    tintColor: 'rgb(255, 255, 255)',
  },
  headerLeftContainer: {
    flexDirection: "row",
    marginLeft: 8,
  },
  profilePhotosView: {
    backgroundColor: 'rgb(243, 242, 243)',
    flex: 1,
  },
  galleryFlatListViewWrapper: {
    marginTop: 73,
    marginBottom: -1,
    flex: 1,
  },
  galleryFlatList: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: "100%",
    height: "100%",
  },
})
