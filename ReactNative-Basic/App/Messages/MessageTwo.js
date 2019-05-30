//
//  MessageTwo
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { View, StyleSheet, Image, Text, TouchableWithoutFeedback } from "react-native"
import React from "react"


export default class MessageTwo extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onMessageTwoPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onMessageTwoPress}>
				<View
					navigation={this.props.navigation}
					style={styles.message}>
					<View
						style={styles.avatarView}>
						<View
							style={styles.uiAvatarSmallCopyView}>
							<Image
								source={require("./../../assets/images/avatarastronaut-2.png")}
								style={styles.avatarAstronautImage}/>
						</View>
					</View>
					<View
						pointerEvents="box-none"
						style={{
							alignSelf: "flex-start",
							width: 197,
							height: 35,
							marginLeft: 10,
							marginTop: 23,
							alignItems: "flex-start",
						}}>
						<Text
							style={styles.nameText}>Fox Murder</Text>
						<Text
							style={styles.iMTellingYouTheText}>I’m telling you, they are amongst us! #scared</Text>
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
	avatarView: {
		backgroundColor: "transparent",
		width: 60,
		height: 60,
		marginLeft: 15,
		justifyContent: "center",
	},
	uiAvatarSmallCopyView: {
		backgroundColor: "transparent",
		height: 60,
		justifyContent: "center",
	},
	avatarAstronautImage: {
		backgroundColor: "transparent",
		resizeMode: "center",
		width: null,
		height: 62,
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
	iMTellingYouTheText: {
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
