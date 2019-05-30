//
//  OnlinePersonThree
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, View, Image, TouchableWithoutFeedback, StyleSheet } from "react-native"
import React from "react"


export default class OnlinePersonThree extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onOnlinePersonThreePress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onOnlinePersonThreePress}>
				<View
					navigation={this.props.navigation}
					style={styles.onlinePerson}>
					<Text
						style={styles.gideonText}>Gideon</Text>
					<Image
						source={require("./../../assets/images/ui-avatar-small-copy-2.png")}
						style={styles.uiAvatarSmallCopy2Image}/>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	onlinePerson: {
		backgroundColor: "transparent",
		width: 60,
		height: 75,
	},
	gideonText: {
		backgroundColor: "transparent",
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		position: "absolute",
		left: 11,
		right: 10,
		bottom: 0,
	},
	uiAvatarSmallCopy2Image: {
		backgroundColor: "transparent",
		resizeMode: "center",
		position: "absolute",
		left: 0,
		right: 0,
		top: 0,
		height: 62,
	},
})
