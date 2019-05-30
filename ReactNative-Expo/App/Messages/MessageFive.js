//
//  MessageFive
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { StyleSheet, Image, TouchableWithoutFeedback, Text, View } from "react-native"
import React from "react"


export default class MessageFive extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onMessageFivePress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onMessageFivePress}>
				<View
					navigation={this.props.navigation}
					style={styles.message}>
					<Image
						source={require("./../../assets/images/avatar-temp-3.png")}
						style={styles.avatarImage}/>
					<View
						pointerEvents="box-none"
						style={{
							alignSelf: "flex-start",
							width: 214,
							height: 35,
							marginLeft: 9,
							marginTop: 23,
							alignItems: "flex-start",
						}}>
						<Text
							style={styles.nameText}>Jack O’ Kneel</Text>
						<Text
							style={styles.finallyHavingADatText}>Finally having a date with Pam, took like 10 years.</Text>
					</View>
					<View
						style={{
							flex: 1,
						}}/>
					<Image
						source={require("./../../assets/images/path-2.png")}
						style={styles.path2Image}/>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	message: {
		backgroundColor: "white",
		width: "100%",
		height: 80,
		flexDirection: "row",
		alignItems: "center",
	},
	avatarImage: {
		backgroundColor: "transparent",
		resizeMode: "center",
		width: 62,
		height: 62,
		marginLeft: 14,
	},
	nameText: {
		backgroundColor: "transparent",
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
	},
	finallyHavingADatText: {
		backgroundColor: "transparent",
		color: "rgb(148, 148, 148)",
		fontFamily: "Lato-Regular",
		fontSize: 10,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		marginTop: 4,
	},
	path2Image: {
		backgroundColor: "transparent",
		resizeMode: "center",
		width: 7,
		height: 13,
		marginRight: 20,
	},
})
