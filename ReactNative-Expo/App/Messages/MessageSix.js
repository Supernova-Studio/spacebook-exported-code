//
//  MessageSix
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { TouchableWithoutFeedback, StyleSheet, View, Text, Image } from "react-native"
import React from "react"


export default class MessageSix extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onMessageSixPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onMessageSixPress}>
				<View
					navigation={this.props.navigation}
					style={styles.message}>
					<Image
						source={require("./../../assets/images/avatar-temp-2.png")}
						style={styles.avatarImage}/>
					<View
						pointerEvents="box-none"
						style={{
							alignSelf: "flex-start",
							width: 189,
							height: 35,
							marginLeft: 9,
							marginTop: 23,
							alignItems: "flex-start",
						}}>
						<Text
							style={styles.nameText}>Mrs. Doya</Text>
						<Text
							style={styles.weVeBeenForcedToText}>We’ve been forced to add you a new friend</Text>
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
	weVeBeenForcedToText: {
		backgroundColor: "transparent",
		color: "black",
		fontFamily: "Lato-Bold",
		fontSize: 10,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "left",
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
