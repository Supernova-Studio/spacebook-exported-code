//
//  MessageFour
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, Image, StyleSheet, TouchableWithoutFeedback, View } from "react-native"
import React from "react"


export default class MessageFour extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onMessageFourPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onMessageFourPress}>
				<View
					navigation={this.props.navigation}
					style={styles.message}>
					<Image
						source={require("./../../assets/images/avatar.png")}
						style={styles.avatarImage}/>
					<View
						pointerEvents="box-none"
						style={{
							alignSelf: "flex-start",
							width: 215,
							height: 35,
							marginLeft: 9,
							marginTop: 23,
							alignItems: "flex-start",
						}}>
						<Text
							style={styles.nameText}>Lukewarm Skywater</Text>
						<Text
							style={styles.theWaterSoTestyYText}>The water so testy your own dad will kill you for it</Text>
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
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
	},
	theWaterSoTestyYText: {
		color: "rgb(148, 148, 148)",
		fontFamily: "Lato-Regular",
		fontSize: 10,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		marginTop: 4,
	},
	path2Image: {
		resizeMode: "center",
		backgroundColor: "transparent",
		width: 7,
		height: 13,
		marginRight: 20,
	},
})
