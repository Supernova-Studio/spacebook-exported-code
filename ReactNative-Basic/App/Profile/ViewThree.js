//
//  ViewThree
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { StyleSheet, TouchableWithoutFeedback, Image, View } from "react-native"
import React from "react"


export default class ViewThree extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onViewThreePress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onViewThreePress}>
				<View
					navigation={this.props.navigation}
					style={styles.view}>
					<Image
						source={require("./../../assets/images/photo-1.png")}
						style={styles.photo1Image}/>
				</View>
			</TouchableWithoutFeedback>
	}
}

const styles = StyleSheet.create({
	view: {
		backgroundColor: "transparent",
		width: 122,
		height: 122,
		justifyContent: "center",
		alignItems: "flex-start",
	},
	photo1Image: {
		backgroundColor: "transparent",
		resizeMode: "center",
		width: 122,
		height: 122,
	},
})
