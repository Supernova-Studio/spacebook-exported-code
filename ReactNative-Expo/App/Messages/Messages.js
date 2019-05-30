//
//  Messages
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { Image, FlatList, View, StyleSheet } from "react-native"
import OnlinePersonThree from "./OnlinePersonThree"
import MessageFive from "./MessageFive"
import { FlatGrid } from "react-native-super-grid"
import MessageFour from "./MessageFour"
import MessageSix from "./MessageSix"
import OnlinePersonTwo from "./OnlinePersonTwo"
import MessageThree from "./MessageThree"
import { LinearGradient } from "expo"
import Message from "./Message"
import MessageTwo from "./MessageTwo"
import OnlinePerson from "./OnlinePerson"


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
					colors={["rgb(247, 132, 98)", "rgb(139, 27, 140)"]}
					style={styles.navigationBarGradient}/>,
				title: "Messages",
				headerTintColor: "white",
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
	
		return <Message
				navigation={this.props.navigation}/>
	}

	render() {
	
		return <View
				style={styles.messagesView}>
				<View
					style={styles.onlineFlatListViewWrapper}>
					<FlatGrid
						renderItem={this.renderOnlineFlatListCell}
						items={[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]}
						itemDimension={75}
						horizontal={true}
						spacing={10}
						style={styles.onlineFlatList}/>
				</View>
				<View
					style={styles.messagesFlatListViewWrapper}>
					<FlatList
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
		backgroundColor: "rgb(244, 242, 244)",
		flex: 1,
	},
	onlineFlatList: {
		backgroundColor: "transparent",
		width: "100%",
		height: "100%",
	},
	onlineFlatListViewWrapper: {
		height: 75,
		marginLeft: 15,
		marginRight: 20,
		marginTop: 74,
	},
	messagesFlatList: {
		backgroundColor: "transparent",
		width: "100%",
		height: "100%",
	},
	messagesFlatListViewWrapper: {
		flex: 1,
		marginTop: 12,
	},
})
