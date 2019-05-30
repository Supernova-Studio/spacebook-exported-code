//
//  ViewTwo
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { View, TouchableWithoutFeedback, Image, StyleSheet } from "react-native"
import React from "react"


export default class ViewTwo extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onViewTwoPress = () => {
	
		const { navigate } = this.props.navigation
		navigate("ProfilePhotos")
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onViewTwoPress}>
				<View
					navigation={this.props.navigation}
					style={styles.view}>
					<Image
						source={require("./../../assets/images/photo-3.png")}
						style={styles.photo3Image}/>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	view: {
		backgroundColor: "transparent",
		width: 123,
		height: 122,
		justifyContent: "center",
		alignItems: "flex-end",
	},
	photo3Image: {
		backgroundColor: "transparent",
		resizeMode: "center",
		width: 123,
		height: 122,
	},
})
