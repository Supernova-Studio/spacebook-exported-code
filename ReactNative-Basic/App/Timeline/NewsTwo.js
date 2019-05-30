//
//  NewsTwo
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import React from "react"
import { TouchableWithoutFeedback, StyleSheet, Image, Text, View } from "react-native"


export default class NewsTwo extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onNewsTwoPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onNewsTwoPress}>
				<View
					navigation={this.props.navigation}
					style={styles.news}>
					<View
						style={styles.bgWhiteView}/>
					<View
						pointerEvents="box-none"
						style={{
							position: "absolute",
							left: 0,
							right: 0,
							top: 80,
							bottom: 1,
						}}>
						<Image
							source={require("./../../assets/images/bg-news-temp.png")}
							style={styles.bgNewsTempImage}/>
						<Text
							style={styles.raidersFromTheGemText}>Raiders from the Gemini Cluster are attacking colonial trader ships. When will the Federation step in?</Text>
						<View
							style={{
								flex: 1,
							}}/>
						<View
							style={styles.viewTwoView}>
							<Image
								source={require("./../../assets/images/icon-like.png")}
								style={styles.iconLikeImage}/>
							<Text
								style={styles.varthDader3kLikText}>Varth Dader & 3k like this</Text>
							<View
								style={{
									flex: 1,
								}}/>
							<Text
								style={styles.commentsDisabledByText}>Comments disabled by the force</Text>
						</View>
					</View>
					<View
						style={styles.viewView}>
						<Image
							source={require("./../../assets/images/icon-avatar-2.png")}
							style={styles.iconAvatarImage}/>
						<View
							pointerEvents="box-none"
							style={{
								width: 127,
								height: 32,
								marginLeft: 9,
								marginTop: 23,
								alignItems: "flex-start",
							}}>
							<Text
								style={styles.theGoodOldTimesText}>The Good Old Times</Text>
							<Text
								style={styles.today145PmText}>Today, 1:45 PM</Text>
						</View>
					</View>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	news: {
		backgroundColor: "transparent",
		width: "100%",
		height: 470,
	},
	bgWhiteView: {
		backgroundColor: "white",
		position: "absolute",
		left: 0,
		right: 0,
		top: 30,
		bottom: 1,
	},
	bgNewsTempImage: {
		resizeMode: "stretch",
		backgroundColor: "transparent",
		width: null,
		height: 250,
	},
	raidersFromTheGemText: {
		backgroundColor: "transparent",
		color: "rgb(7, 7, 7)",
		fontFamily: "Lato-Regular",
		fontSize: 14,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		lineHeight: 20,
		height: 40,
		marginLeft: 20,
		marginRight: 14,
		marginTop: 18,
	},
	viewTwoView: {
		backgroundColor: "rgb(250, 250, 250)",
		height: 59,
		flexDirection: "row",
		alignItems: "center",
	},
	iconLikeImage: {
		backgroundColor: "transparent",
		resizeMode: "center",
		width: 19,
		height: 19,
		marginLeft: 20,
	},
	varthDader3kLikText: {
		backgroundColor: "transparent",
		opacity: 0.4,
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		marginLeft: 5,
	},
	commentsDisabledByText: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "right",
		backgroundColor: "transparent",
		opacity: 0.2,
		marginRight: 20,
	},
	viewView: {
		backgroundColor: "transparent",
		position: "absolute",
		left: 10,
		right: 20,
		top: 16,
		height: 80,
		flexDirection: "row",
		alignItems: "flex-start",
	},
	iconAvatarImage: {
		backgroundColor: "transparent",
		resizeMode: "center",
		width: 80,
		height: 80,
	},
	theGoodOldTimesText: {
		backgroundColor: "transparent",
		color: "rgb(15, 15, 15)",
		fontFamily: "Lato-Bold",
		fontSize: 14,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "left",
	},
	today145PmText: {
		backgroundColor: "transparent",
		opacity: 0.4,
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 10,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		marginTop: 3,
	},
})
