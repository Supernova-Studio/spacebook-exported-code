//
//  Event
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { View, Image, TouchableWithoutFeedback, StyleSheet, Text } from "react-native"
import React from "react"


export default class Event extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onEventPress = () => {
	
		const { navigate } = this.props.navigation
		navigate("EventDetail")
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onEventPress}>
				<View
					navigation={this.props.navigation}
					style={styles.event}>
					<View
						style={styles.bgWhiteView}/>
					<View
						style={styles.headerView}>
						<Image
							source={require("./../../assets/images/bg-event-temp-2.png")}
							style={styles.bgEventTempImage}/>
						<View
							pointerEvents="box-none"
							style={{
								position: "absolute",
								left: 20,
								right: 20,
								bottom: 22,
								height: 29,
								flexDirection: "row",
								alignItems: "flex-end",
							}}>
							<Text
								style={styles.textText}>3/13/2050</Text>
							<View
								style={{
									flex: 1,
								}}/>
							<Text
								style={styles.guessWhoSBackText}>Guess who’s back?</Text>
						</View>
					</View>
					<View
						pointerEvents="box-none"
						style={{
							position: "absolute",
							left: 0,
							right: 0,
							top: 15,
							bottom: 0,
						}}>
						<View
							style={styles.viewView}>
							<Image
								source={require("./../../assets/images/avatar-2.png")}
								style={styles.avatarImage}/>
							<View
								pointerEvents="box-none"
								style={{
									width: 219,
									height: 32,
									marginLeft: 8,
									marginTop: 25,
									alignItems: "flex-start",
								}}>
								<Text
									style={styles.laikaCreatedANewText}>Laika created a new event near you</Text>
								<Text
									style={styles.backFromTheSpaceText}>Back from the space trip! Come everyone.</Text>
							</View>
						</View>
						<View
							style={{
								flex: 1,
							}}/>
						<View
							style={styles.viewTwoView}>
							<Text
								style={styles.johnJoeAndJackText}>John, Joe and Jack & 18k are coming</Text>
						</View>
					</View>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	event: {
		backgroundColor: "transparent",
		width: "100%",
		height: 336,
	},
	bgWhiteView: {
		backgroundColor: "white",
		position: "absolute",
		left: 0,
		right: 0,
		top: 31,
		bottom: 0,
	},
	headerView: {
		backgroundColor: "transparent",
		position: "absolute",
		left: 0,
		right: 0,
		top: 84,
		bottom: 52,
	},
	bgEventTempImage: {
		backgroundColor: "transparent",
		resizeMode: "stretch",
		position: "absolute",
		left: 0,
		right: 0,
		top: 0,
		bottom: 0,
	},
	textText: {
		color: "white",
		fontFamily: "Lato-Regular",
		fontSize: 14,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		marginBottom: 2,
	},
	guessWhoSBackText: {
		color: "white",
		fontFamily: "Lato-Black",
		fontSize: 24,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "right",
		lineHeight: 24,
		paddingTop: 5,
		backgroundColor: "transparent",
	},
	viewView: {
		backgroundColor: "transparent",
		height: 82,
		marginLeft: 9,
		marginRight: 17,
		flexDirection: "row",
		alignItems: "flex-start",
	},
	avatarImage: {
		resizeMode: "center",
		backgroundColor: "transparent",
		width: 82,
		height: 82,
	},
	laikaCreatedANewText: {
		color: "rgb(15, 15, 15)",
		fontFamily: "Lato-Bold",
		fontSize: 14,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "left",
		backgroundColor: "transparent",
	},
	backFromTheSpaceText: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 10,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		opacity: 0.4,
		marginTop: 3,
	},
	viewTwoView: {
		backgroundColor: "rgb(250, 250, 250)",
		height: 53,
		justifyContent: "center",
		alignItems: "flex-start",
	},
	johnJoeAndJackText: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		opacity: 0.4,
		marginLeft: 20,
	},
})
