//
//  EventDetail
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { MapView, LinearGradient } from "expo"
import { Image, TouchableOpacity, View, Text, StyleSheet } from "react-native"
import React from "react"


export default class EventDetail extends React.Component {

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
				title: "Guess who's back?",
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
				headerRight: <View
					style={styles.headerRightContainer}>
					<TouchableOpacity
						onPress={params.onLeftItemPressed ? params.onLeftItemPressed : () => null}
						style={styles.navigationBarItem}>
						<Text
							style={styles.navigationBarItemTitle}>Events</Text>
					</TouchableOpacity>
				</View>,
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
			onLeftItemPressed: this.onLeftItemPressed,
		})
	}

	onGroupPressed = () => {
	
		this.props.navigation.goBack()
	}

	onLeftItemPressed = () => {
	
	}

	render() {
	
		return <View
				style={styles.eventDetailView}>
				<View
					pointerEvents="box-none"
					style={{
						position: "absolute",
						left: 0,
						right: 0,
						top: 0,
						bottom: 0,
					}}>
					<MapView
						showsScale={false}
						showsTraffic={false}
						style={styles.bgMapTempMapView}/>
					<View
						style={styles.footerView}>
						<View
							style={styles.bgView}/>
						<View
							pointerEvents="box-none"
							style={{
								position: "absolute",
								left: 9,
								right: 20,
								top: 0,
								height: 82,
								flexDirection: "row",
								alignItems: "flex-start",
							}}>
							<Image
								source={require("./../../assets/images/avatar-2.png")}
								style={styles.avatarImage}/>
							<View
								pointerEvents="box-none"
								style={{
									width: 121,
									height: 51,
									marginLeft: 8,
									marginTop: 25,
									alignItems: "flex-start",
								}}>
								<Text
									style={styles.guessWhoSBackText}>Guess who’s back?</Text>
								<Text
									style={styles.happeningIn20hBaText}>Happening in 20h, Bajkonur</Text>
								<Text
									style={styles.eventPostedByLaikText}>Event posted by Laika</Text>
							</View>
							<View
								style={{
									flex: 1,
								}}/>
							<View
								style={styles.comingView}>
								<Image
									source={require("./../../assets/images/group.png")}
									style={styles.groupImage}/>
								<View
									style={{
										flex: 1,
									}}/>
								<Text
									style={styles.comingText}>Coming</Text>
							</View>
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
					<Image
						source={require("./../../assets/images/icon-event-area.png")}
						style={styles.iconEventAreaImage}/>
				</View>
			</View>
	}
}

const styles = StyleSheet.create({
	navigationBarItemTitle: {
		color: "white",
	},
	headerRightContainer: {
		flexDirection: "row",
		marginRight: 8,
	},
	navigationBarGradient: {
		flex: 1,
	},
	navigationBarItem: {
	},
	headerLeftContainer: {
		flexDirection: "row",
		marginLeft: 8,
	},
	navigationBarItemIcon: {
		tintColor: "white",
	},
	eventDetailView: {
		backgroundColor: "rgb(244, 242, 244)",
		flex: 1,
	},
	bgMapTempMapView: {
		backgroundColor: "transparent",
		position: "absolute",
		left: 0,
		right: 0,
		top: 0,
		bottom: 0,
	},
	footerView: {
		backgroundColor: "transparent",
		position: "absolute",
		left: 0,
		right: 0,
		bottom: 0,
		height: 95,
	},
	bgView: {
		backgroundColor: "white",
		position: "absolute",
		left: 0,
		right: 0,
		top: 15,
		height: 80,
	},
	avatarImage: {
		resizeMode: "center",
		backgroundColor: "transparent",
		width: 82,
		height: 82,
	},
	guessWhoSBackText: {
		color: "rgb(15, 15, 15)",
		fontFamily: "Lato-Bold",
		fontSize: 14,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "left",
		backgroundColor: "transparent",
	},
	happeningIn20hBaText: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 10,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		marginTop: 3,
	},
	eventPostedByLaikText: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 10,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		opacity: 0.4,
		marginTop: 7,
	},
	comingView: {
		backgroundColor: "transparent",
		width: 48,
		height: 48,
		marginTop: 28,
	},
	groupImage: {
		resizeMode: "center",
		backgroundColor: "transparent",
		width: null,
		height: 29,
		marginLeft: 10,
		marginRight: 10,
	},
	comingText: {
		backgroundColor: "transparent",
		color: "rgb(139, 27, 140)",
		fontFamily: "Lato-Regular",
		fontSize: 14,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
	},
	iconEventAreaImage: {
		backgroundColor: "transparent",
		resizeMode: "stretch",
		width: 185,
		height: 185,
	},
})
