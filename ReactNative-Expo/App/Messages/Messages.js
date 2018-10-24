//
//  Messages.js
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Image, FlatList, View, StyleSheet } from "react-native"
import MessageTwo from "./MessageTwo"
import MessageSix from "./MessageSix"
import MessageFour from "./MessageFour"
import OnlinePersonTwo from "./OnlinePersonTwo"
import OnlinePerson from "./OnlinePerson"
import React from "react"
import Message from "./Message"
import { LinearGradient } from "expo"
import MessageThree from "./MessageThree"
import OnlinePersonThree from "./OnlinePersonThree"
import MessageFive from "./MessageFive"

export default class Messages extends React.Component {

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
        title: "Messages",
        headerTintColor: 'rgb(255, 255, 255)',
        headerLeft: null,
        headerRight: null,
        headerStyle: {
        },
      }
  }

  static tabBarItemOptions = ({ navigation }) => {
    return {
        tabBarLabel: "Messages",
        tabBarIcon: ({ iconTintColor }) => {
          return <Image
              source={require("./../../assets/images/active-icon-3.png")}/>
        },
      }
  }

  constructor(props) {
    super(props)
  }

  componentDidMount() {
  }

  onlineFlatListMockData = [{
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

  renderOnlineFlatListCell = ({ item }) => {
    return <OnlinePerson/>
  }

  messagesFlatListMockData = [{
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

  renderMessagesFlatListCell = ({ item }) => {
    return <Message/>
  }

  render() {
    return <View
        pointerEvents="box-none"
        style={styles.messagesView}>
        <View
          style={styles.onlineFlatListViewWrapper}>
          <FlatList
            horizontal={true}
            renderItem={this.renderOnlineFlatListCell}
            data={this.onlineFlatListMockData}
            style={styles.onlineFlatList}/>
        </View>
        <View
          style={styles.messagesFlatListViewWrapper}>
          <FlatList
            horizontal={false}
            renderItem={this.renderMessagesFlatListCell}
            data={this.messagesFlatListMockData}
            style={styles.messagesFlatList}/>
        </View>
      </View>
  }
}

const styles = StyleSheet.create({
  navigationBarGradient: {
    flex: 1,
  },
  messagesView: {
    backgroundColor: 'rgb(243, 242, 243)',
    flex: 1,
  },
  onlineFlatList: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: "100%",
    height: "100%",
  },
  onlineFlatListViewWrapper: {
    height: 75,
    marginLeft: 15,
    marginTop: 74,
    marginRight: 20,
  },
  messagesFlatList: {
    backgroundColor: 'rgba(0, 0, 0, 0.0)',
    width: "100%",
    height: "100%",
  },
  messagesFlatListViewWrapper: {
    marginTop: 12,
    flex: 1,
  },
})
