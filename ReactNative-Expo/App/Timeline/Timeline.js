//
//  Timeline
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { StyleSheet, Image, View, FlatList } from "react-native"
import { LinearGradient } from "expo"
import LifetimeEvent from "./LifetimeEvent"
import Advertisement from "./Advertisement"
import React from "react"
import News from "./News"
import Event from "./Event"
import NewsTwo from "./NewsTwo"


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
					colors={["rgb(247, 132, 98)", "rgb(139, 27, 140)"]}
					style={styles.navigationBarGradient}/>,
				title: "What's up?",
				headerTintColor: "white",
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
	
		return <News
				navigation={this.props.navigation}/>
	}

	render() {
	
		return <View
				style={styles.timelineView}>
				<View
					style={styles.timelineFlatListViewWrapper}>
					<FlatList
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
		backgroundColor: "rgb(244, 242, 244)",
		flex: 1,
	},
	timelineFlatList: {
		backgroundColor: "transparent",
		width: "100%",
		height: "100%",
	},
	timelineFlatListViewWrapper: {
		flex: 1,
		marginTop: 64,
	},
})
