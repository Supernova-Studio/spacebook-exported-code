//
//  ViewSix
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { StyleSheet, TouchableWithoutFeedback, View, Image } from "react-native"
import React from "react"


export default class ViewSix extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onViewSixPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onViewSixPress}>
				<View
					navigation={this.props.navigation}
					style={styles.view}>
					<Image
						source={require("./../../assets/images/bg-photo-5.png")}
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
		justifyContent: "flex-end",
		alignItems: "flex-start",
	},
	bgPhotoImage: {
		backgroundColor: "transparent",
		resizeMode: "stretch",
		width: 184,
		height: 184,
	},
})
