//
//  ViewFive
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { View, Image, TouchableWithoutFeedback, StyleSheet } from "react-native"
import React from "react"


export default class ViewFive extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onViewFivePress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onViewFivePress}>
				<View
					navigation={this.props.navigation}
					style={styles.view}>
					<Image
						source={require("./../../assets/images/bg-photo-2.png")}
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
		resizeMode: "stretch",
		backgroundColor: "transparent",
		width: 185,
		height: 184,
	},
})
