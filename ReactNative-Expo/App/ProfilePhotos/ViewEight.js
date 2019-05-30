//
//  ViewEight
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { TouchableWithoutFeedback, StyleSheet, Image, View } from "react-native"
import React from "react"


export default class ViewEight extends React.Component {

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
	}

	onViewEightPress = () => {
	
	}

	render() {
	
		return <TouchableWithoutFeedback
				onPress={this.onViewEightPress}>
				<View
					navigation={this.props.navigation}
					style={styles.view}>
					<Image
						source={require("./../../assets/images/photo-3.png")}
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
	},
	bgPhotoImage: {
		resizeMode: "stretch",
		backgroundColor: "transparent",
		flex: 1,
		width: null,
	},
})
