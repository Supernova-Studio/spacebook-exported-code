//
//  ProfileSettings
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, TouchableOpacity, View, Image, Switch, StyleSheet } from "react-native"
import React from "react"
import { LinearGradient } from "expo"


export default class ProfileSettings extends React.Component {

	static navigationOptions = ({ navigation }) => {
	
		const { params = {} } = navigation.state
		return {
				headerTransparent: true,
				headerBackground: <LinearGradient
					start={{
						x: -0.01,
						y: 0.51,
					}}
					end={{
						x: 1.01,
						y: 0.49,
					}}
					locations={[0, 1]}
					colors={["rgb(247, 132, 98)", "rgb(139, 27, 140)"]}
					style={styles.navigationBarGradient}/>,
				title: "Dr. Where settings",
				headerTintColor: "white",
				headerLeft: <View
					style={styles.headerLeftContainer}>
					<TouchableOpacity
						onPress={params.onGroupPressed ? params.onGroupPressed : () => null}
						style={styles.navigationBarItem}>
						<Image
							source={require("./../../assets/images/group-2.png")}
							style={styles.navigationBarItemIcon}/>
					</TouchableOpacity>
				</View>,
				headerRight: null,
				headerStyle: {
				},
			}
	}

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
		this.props.navigation.setParams({
			onGroupPressed: this.onGroupPressed,
		})
	}

	onSlideValueChanged = () => {
	
	}

	onGroupPressed = () => {
	
		this.props.navigation.goBack()
	}

	render() {
	
		return <View
				style={styles.profileSettingsView}>
				<Image
					source={require("./../../assets/images/avatar-temp.png")}
					style={styles.avatarTempImage}/>
				<View
					style={styles.informationView}>
					<Text
						style={styles.detailsText}>DETAILS</Text>
					<View
						style={styles.group6View}>
						<View
							style={styles.uiSettingsCellView}>
							<Text
								style={styles.labelText}>Name</Text>
							<View
								style={{
									flex: 1,
								}}/>
							<Text
								style={styles.textText}>Dr. Where</Text>
							<Image
								source={require("./../../assets/images/path-2.png")}
								style={styles.path2Image}/>
						</View>
					</View>
					<View
						style={styles.group5View}>
						<View
							style={styles.uiSettingsCellTwoView}>
							<Text
								style={styles.labelTwoText}>Spacemail</Text>
							<View
								style={{
									flex: 1,
								}}/>
							<Text
								style={styles.textTwoText}>tardis~spacemail.io</Text>
							<Image
								source={require("./../../assets/images/path-2.png")}
								style={styles.path2TwoImage}/>
						</View>
					</View>
					<Text
						style={styles.informationText}>INFORMATION</Text>
					<View
						style={styles.group3View}>
						<Text
							style={styles.labelThreeText}>Occasional advertisement</Text>
						<View
							style={{
								flex: 1,
							}}/>
						<Text
							style={styles.textThreeText}>Yes</Text>
					</View>
					<View
						style={styles.group2View}>
						<Text
							style={styles.labelSixText}>Randomize timeline information</Text>
						<View
							style={{
								flex: 1,
							}}/>
						<Switch
							trackColor={{
								true: "rgb(139, 27, 140)",
								false: "rgb(139, 27, 140)",
							}}
							thumbColor="white"
							style={styles.slideSwitch}/>
					</View>
					<View
						style={styles.groupView}>
						<Text
							style={styles.labelFourText}>Logged as</Text>
						<Text
							style={styles.labelFiveText}>Dr. Where</Text>
						<View
							style={{
								flex: 1,
							}}/>
						<Text
							style={styles.textFourText}>Log out</Text>
					</View>
				</View>
			</View>
	}
}

const styles = StyleSheet.create({
	navigationBarGradient: {
		flex: 1,
	},
	navigationBarItem: {
	},
	navigationBarItemIcon: {
		tintColor: "white",
	},
	headerLeftContainer: {
		flexDirection: "row",
		marginLeft: 8,
	},
	profileSettingsView: {
		backgroundColor: "rgb(244, 242, 244)",
		flex: 1,
		alignItems: "center",
	},
	avatarTempImage: {
		backgroundColor: "transparent",
		resizeMode: "stretch",
		width: 92,
		height: 92,
		marginTop: 88,
	},
	informationView: {
		backgroundColor: "transparent",
		alignSelf: "stretch",
		height: 380,
		marginTop: 19,
	},
	detailsText: {
		backgroundColor: "transparent",
		opacity: 0.4,
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		alignSelf: "flex-start",
		marginLeft: 20,
	},
	group6View: {
		backgroundColor: "transparent",
		height: 60,
		marginTop: 10,
		justifyContent: "center",
	},
	uiSettingsCellView: {
		backgroundColor: "white",
		height: 60,
		flexDirection: "row",
		alignItems: "center",
	},
	labelText: {
		backgroundColor: "transparent",
		color: "rgb(4, 12, 22)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		marginLeft: 20,
	},
	textText: {
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Bold",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "right",
		backgroundColor: "transparent",
		marginRight: 15,
	},
	path2Image: {
		resizeMode: "center",
		backgroundColor: "transparent",
		width: 7,
		height: 13,
		marginRight: 20,
	},
	group5View: {
		backgroundColor: "transparent",
		height: 60,
		justifyContent: "center",
	},
	uiSettingsCellTwoView: {
		backgroundColor: "white",
		height: 60,
		flexDirection: "row",
		alignItems: "center",
	},
	labelTwoText: {
		backgroundColor: "transparent",
		color: "rgb(4, 12, 22)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		marginLeft: 20,
	},
	textTwoText: {
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Bold",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "right",
		backgroundColor: "transparent",
		marginRight: 15,
	},
	path2TwoImage: {
		resizeMode: "center",
		backgroundColor: "transparent",
		width: 7,
		height: 13,
		marginRight: 20,
	},
	informationText: {
		color: "black",
		fontFamily: ".AppleSystemUIFont",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		opacity: 0.4,
		alignSelf: "flex-start",
		marginLeft: 20,
		marginTop: 30,
	},
	group3View: {
		backgroundColor: "white",
		height: 60,
		marginTop: 10,
		flexDirection: "row",
		alignItems: "center",
	},
	labelThreeText: {
		color: "rgb(4, 12, 22)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		marginLeft: 20,
	},
	textThreeText: {
		backgroundColor: "transparent",
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "right",
		marginRight: 20,
	},
	group2View: {
		backgroundColor: "white",
		height: 60,
		flexDirection: "row",
		alignItems: "center",
	},
	labelSixText: {
		color: "rgb(4, 12, 22)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		marginLeft: 20,
	},
	slideSwitch: {
		backgroundColor: "transparent",
		width: 51,
		height: 32,
		marginRight: 20,
	},
	groupView: {
		backgroundColor: "white",
		height: 60,
		flexDirection: "row",
		alignItems: "center",
	},
	labelFourText: {
		backgroundColor: "transparent",
		opacity: 0.4,
		color: "rgb(4, 12, 22)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		marginLeft: 20,
	},
	labelFiveText: {
		color: "rgb(4, 12, 22)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		marginLeft: 10,
	},
	textFourText: {
		backgroundColor: "transparent",
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Regular",
		fontSize: 16,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "right",
		marginRight: 20,
	},
})
