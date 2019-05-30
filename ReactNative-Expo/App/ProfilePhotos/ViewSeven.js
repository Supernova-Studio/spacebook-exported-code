//
//  ViewSeven
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { StyleSheet, View, TouchableWithoutFeedback, Image } from "react-native"
import React from "react"


export default class ViewSeven extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onViewSevenPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onViewSevenPress}>
				<View
					navigation={this.props.navigation}
					style={styles.view}>
					<Image
						source={require("./../../assets/images/bg-photo-6.png")}
						style={styles.bgPhotoImage}/>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	view: {
		backgroundColor: "transparent",
		width: 184,
		height: 184,
		alignItems: "flex-start",
	},
	bgPhotoImage: {
		backgroundColor: "transparent",
		resizeMode: "stretch",
		width: 184,
		height: 184,
	},
})
