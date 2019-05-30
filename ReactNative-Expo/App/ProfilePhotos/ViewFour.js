//
//  ViewFour
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { View, TouchableWithoutFeedback, StyleSheet, Image } from "react-native"
import React from "react"


export default class ViewFour extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onViewFourPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onViewFourPress}>
				<View
					navigation={this.props.navigation}
					style={styles.view}>
					<Image
						source={require("./../../assets/images/bg-photo-7.png")}
						style={styles.bgPhotoImage}/>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	view: {
		backgroundColor: "transparent",
		width: 185,
		height: 184,
		alignItems: "flex-end",
	},
	bgPhotoImage: {
		backgroundColor: "transparent",
		resizeMode: "stretch",
		width: 185,
		height: 184,
	},
})
