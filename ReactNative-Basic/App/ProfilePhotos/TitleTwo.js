//
//  TitleTwo
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { TouchableWithoutFeedback, StyleSheet, Text, View } from "react-native"
import React from "react"


export default class TitleTwo extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onTitleTwoPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onTitleTwoPress}>
				<View
					navigation={this.props.navigation}
					style={styles.title}>
					<Text
						style={styles.tomorrowText}>TOMORROW</Text>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	title: {
		backgroundColor: "transparent",
		width: 375,
		height: 37,
		justifyContent: "center",
		alignItems: "flex-start",
	},
	tomorrowText: {
		backgroundColor: "transparent",
		opacity: 0.4,
		color: "black",
		fontFamily: ".AppleSystemUIFont",
		fontSize: 13,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		marginLeft: 20,
	},
})
