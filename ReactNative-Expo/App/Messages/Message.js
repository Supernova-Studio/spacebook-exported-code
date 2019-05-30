//
//  Message
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, View, Image, TouchableWithoutFeedback, StyleSheet } from "react-native"
import React from "react"


export default class Message extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onMessagePress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onMessagePress}>
				<View
					navigation={this.props.navigation}
					style={styles.message}>
					<Image
						source={require("./../../assets/images/avatar-temp-4.png")}
						style={styles.avatarImage}/>
					<View
						pointerEvents="box-none"
						style={{
							alignSelf: "flex-start",
							width: 236,
							height: 35,
							marginLeft: 9,
							marginTop: 23,
							alignItems: "flex-start",
						}}>
						<Text
							style={styles.nameText}>Vulcan</Text>
						<Text
							style={styles.theNeedsOfTheFewText}>The needs of the few outweight the needs of the many.</Text>
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
		resizeMode: "center",
		backgroundColor: "transparent",
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
	theNeedsOfTheFewText: {
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
