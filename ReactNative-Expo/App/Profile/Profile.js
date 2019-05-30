//
//  Profile
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import ViewTwo from "./ViewTwo"
import { Image, View, StyleSheet, Text, TouchableOpacity } from "react-native"
import { FlatGrid } from "react-native-super-grid"
import { LinearGradient } from "expo"
import ViewTwoTwo from "./ViewTwoTwo"
import ViewThree from "./ViewThree"
import React from "react"


export default class Profile extends React.Component {

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
				title: "Dr. What Profile",
				headerTintColor: "white",
				headerLeft: null,
				headerRight: <View
					style={styles.headerRightContainer}>
					<TouchableOpacity
						onPress={params.onLeftItemPressed ? params.onLeftItemPressed : () => null}
						style={styles.navigationBarItem}>
						<Text
							style={styles.navigationBarItemTitle}>Settings</Text>
					</TouchableOpacity>
				</View>,
				headerStyle: {
				},
			}
	}

	static tabBarItemOptions = ({ navigation }) => {
	
		return {
				tabBarLabel: "Profile",
				tabBarIcon: ({ iconTintColor }) => {
				
					return <Image
							source={require("./../../assets/images/active-icon-6.png")}/>
				},
			}
	}

	constructor(props) {
		super(props)
	}

	componentDidMount() {
	
		this.props.navigation.setParams({
			onLeftItemPressed: this.onLeftItemPressed,
		})
	}

	onLeftItemPressed = () => {
	
		const { navigate } = this.props.navigation
		
		navigate("ProfileSettings")
	}

	renderPhotosFlatListCell = ({ item }) => {
	
		return <ViewTwo/>
	}

	render() {
	
		return <View
				style={styles.profileView}>
				<View
					style={styles.headerView}>
					<Image
						source={require("./../../assets/images/avatar-temp.png")}
						style={styles.avatarTempImage}/>
					<Text
						style={styles.drWhatText}>Dr. What</Text>
					<Text
						style={styles.phoneBoothAndroText}>1 Phone Booth, Andromeda</Text>
					<View
						style={{
							flex: 1,
						}}/>
					<Text
						style={styles.travelerDreamerText}>Traveler, dreamer, showman. Occasionally gets into fight, not always survives.</Text>
				</View>
				<View
					style={styles.infoBarView}>
					<View
						pointerEvents="box-none"
						style={{
							position: "absolute",
							left: 0,
							right: 0,
							top: 0,
							bottom: 0,
							justifyContent: "center",
						}}>
						<View
							pointerEvents="box-none"
							style={{
								height: 44,
								marginLeft: 42,
								marginRight: 41,
								flexDirection: "row",
								alignItems: "center",
							}}>
							<View
								style={styles.group5View}>
								<Text
									style={styles.textText}>365</Text>
								<View
									style={{
										flex: 1,
									}}/>
								<Text
									style={styles.photosText}>Photos</Text>
							</View>
							<View
								style={{
									flex: 1,
								}}/>
							<View
								style={styles.group7View}>
								<Text
									style={styles.textTwoText}>326</Text>
								<View
									style={{
										flex: 1,
									}}/>
								<Text
									style={styles.stalkingText}>Stalking</Text>
							</View>
						</View>
					</View>
					<View
						pointerEvents="box-none"
						style={{
							position: "absolute",
							alignSelf: "center",
							top: 0,
							bottom: 0,
							justifyContent: "center",
						}}>
						<View
							style={styles.group6View}>
							<Text
								style={styles.kText}>58k</Text>
							<View
								style={{
									flex: 1,
								}}/>
							<Text
								style={styles.stalkersText}>Stalkers</Text>
						</View>
					</View>
				</View>
				<View
					style={styles.galleryView}>
					<Text
						style={styles.latestPhotosText}>LATEST PHOTOS</Text>
					<View
						style={styles.photosFlatListViewWrapper}>
						<FlatGrid
							renderItem={this.renderPhotosFlatListCell}
							items={[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]}
							itemDimension={122}
							horizontal={true}
							spacing={10}
							style={styles.photosFlatList}/>
					</View>
				</View>
			</View>
	}
}

const styles = StyleSheet.create({
	navigationBarItem: {
	},
	headerRightContainer: {
		flexDirection: "row",
		marginRight: 8,
	},
	navigationBarGradient: {
		flex: 1,
	},
	navigationBarItemTitle: {
		color: "white",
	},
	profileView: {
		backgroundColor: "rgb(244, 242, 244)",
		flex: 1,
	},
	headerView: {
		backgroundColor: "white",
		height: 297,
		marginTop: 64,
		alignItems: "center",
	},
	avatarTempImage: {
		backgroundColor: "transparent",
		resizeMode: "center",
		width: 124,
		height: 124,
		marginTop: 25,
	},
	drWhatText: {
		backgroundColor: "transparent",
		color: "rgb(4, 12, 22)",
		fontFamily: "Lato-Regular",
		fontSize: 26,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		lineHeight: 32,
		marginTop: 11,
	},
	phoneBoothAndroText: {
		color: "rgb(4, 12, 22)",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		backgroundColor: "transparent",
		opacity: 0.4,
		marginTop: 5,
	},
	travelerDreamerText: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 14,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		lineHeight: 20,
		backgroundColor: "transparent",
		width: 300,
		marginBottom: 27,
	},
	infoBarView: {
		backgroundColor: "rgb(250, 250, 250)",
		height: 84,
	},
	group5View: {
		backgroundColor: "transparent",
		width: 42,
		height: 44,
	},
	textText: {
		color: "rgb(247, 132, 98)",
		fontFamily: "Lato-Bold",
		fontSize: 24,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "center",
		backgroundColor: "transparent",
	},
	photosText: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		backgroundColor: "transparent",
		opacity: 0.4,
		marginLeft: 2,
		marginRight: 2,
	},
	group7View: {
		backgroundColor: "transparent",
		width: 43,
		height: 44,
	},
	textTwoText: {
		color: "rgb(139, 27, 140)",
		fontFamily: "Lato-Bold",
		fontSize: 24,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "center",
		backgroundColor: "transparent",
		marginLeft: 1,
	},
	stalkingText: {
		backgroundColor: "transparent",
		opacity: 0.4,
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
	},
	group6View: {
		backgroundColor: "transparent",
		width: 43,
		height: 44,
	},
	kText: {
		backgroundColor: "transparent",
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Bold",
		fontSize: 24,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "center",
		marginLeft: 1,
	},
	stalkersText: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		backgroundColor: "transparent",
		opacity: 0.4,
	},
	galleryView: {
		backgroundColor: "transparent",
		flex: 1,
		marginLeft: 2,
		marginRight: 2,
		marginTop: 20,
		marginBottom: 52,
		alignItems: "center",
	},
	latestPhotosText: {
		color: "black",
		fontFamily: ".AppleSystemUIFont",
		fontSize: 12,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		opacity: 0.4,
	},
	photosFlatList: {
		backgroundColor: "transparent",
		width: "100%",
		height: "100%",
	},
	photosFlatListViewWrapper: {
		alignSelf: "stretch",
		height: 122,
		marginTop: 13,
	},
})
