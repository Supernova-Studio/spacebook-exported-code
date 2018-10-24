//
//  Timeline.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { FlatList, View, Image, StyleSheet } from "react-native"
import Advertisement from "./Advertisement"
import Event from "./Event"
import LifetimeEvent from "./LifetimeEvent"
import { LinearGradient } from "expo"
import News from "./News"
import NewsTwo from "./NewsTwo"
import React from "react"

export default class Timeline extends React.Component {

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
        title: "What's up?",
        headerTintColor: 'rgb(255, 255, 255)',
        headerLeft: null,
        headerRight: null,
        headerStyle: {
        },
      }
  }

  static tabBarItemOptions = ({ navigation }) => {
    return {
        tabBarLabel: "News",
        tabBarIcon: ({ iconTintColor }) => {
          return <Image
              source={require("./../../assets/images/active-icon-7.png")}/>
        },
      }
  }

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  timelineFlatListMockData = [{
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

  renderTimelineFlatListCell = ({ item }) => {
    return <News/>
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.timelineView}>
        <View
          style={styles.timelineFlatListViewWrapper}>
          <FlatList
            horizontal={false}
            renderItem={this.renderTimelineFlatListCell}
            data={this.timelineFlatListMockData}
            style={styles.timelineFlatList}/>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  navigationBarGradient: {
    flex: 1,
  },
  timelineView: {
    backgroundColor: 'rgb(243, 242, 243)',
    flex: 1,
  },
  timelineFlatListViewWrapper: {
    marginTop: 64,
    flex: 1,
  },
  timelineFlatList: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: "100%",
    height: "100%",
  },
})
