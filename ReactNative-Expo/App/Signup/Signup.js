//
//  Signup
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { Text, Image, View, Switch, StyleSheet, TouchableOpacity, TextInput } from "react-native"
import { LinearGradient } from "expo"
import React from "react"


export default class Signup extends React.Component {

	static navigationOptions = ({ navigation }) => {
	
		const { params = {} } = navigation.state
		return {
				headerTransparent: true,
				headerTintColor: "black",
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
					elevation: 0,
					borderBottomWidth: 0,
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

	onSwitchValueChanged = () => {
	
	}

	onSignUpPressed = () => {
	
		const { navigate } = this.props.navigation
		
		navigate("Untitled")
	}

	onLogInPressed = () => {
	
		const { navigate } = this.props.navigation
		
		navigate("Login")
	}

	onGroupPressed = () => {
	
		this.props.navigation.goBack()
	}

	render() {
	
		return <LinearGradient
				start={{
					x: 0.31,
					y: 1.1,
				}}
				end={{
					x: 0.69,
					y: -0.1,
				}}
				locations={[0, 1]}
				colors={["rgb(247, 132, 98)", "rgb(139, 27, 140)"]}
				style={styles.signupViewLinearGradient}>
				<View
					style={styles.signupView}>
					<Text
						style={styles.signUpText}>Sign up</Text>
					<Text
						style={styles.itSFreeText}>It’s free and always will be.{"\n"}Because advertisement.</Text>
					<View
						style={styles.signUpFieldsView}>
						<TextInput
							autoCorrect={false}
							placeholder="Your nickname"
							style={styles.yourNicknameTextInput}/>
						<View
							style={styles.separatorView}/>
						<TextInput
							autoCorrect={false}
							placeholder="Your spacemail"
							style={styles.yourSpacemailTextInput}/>
						<View
							style={styles.separatorTwoView}/>
						<TextInput
							autoCorrect={false}
							placeholder="Password (40+ characters)"
							secureTextEntry={true}
							style={styles.passwordTextInput}/>
					</View>
					<View
						style={styles.tosView}>
						<Text
							style={styles.iAgreeWithIntergaText}>I agree with intergalatic terms and conditions</Text>
						<View
							style={{
								flex: 1,
							}}/>
						<Switch
							trackColor={{
								true: "rgb(142, 28, 138)",
								false: "rgb(142, 28, 138)",
							}}
							thumbColor="white"
							style={styles.switchSwitch}/>
					</View>
					<View
						style={{
							flex: 1,
						}}/>
					<TouchableOpacity
						onPress={this.onSignUpPressed}
						style={styles.signUpButton}>
						<Image
							source={require("./../../assets/images/icon-sign-up.png")}
							style={styles.signUpButtonImage}/>
						<Text
							style={styles.signUpButtonText}>SIGN UP</Text>
					</TouchableOpacity>
					<View
						style={styles.logInView}>
						<Text
							style={styles.alreadyGaveUpYourText}>Already gave up your soul? </Text>
						<View
							style={{
								flex: 1,
							}}/>
						<TouchableOpacity
							onPress={this.onLogInPressed}
							style={styles.logInButton}>
							<Text
								style={styles.logInButtonText}>Log In!</Text>
						</TouchableOpacity>
					</View>
				</View>
			</LinearGradient>
	}
}

const styles = StyleSheet.create({
	navigationBarItem: {
	},
	headerLeftContainer: {
		flexDirection: "row",
		marginLeft: 8,
	},
	navigationBarItemIcon: {
		tintColor: "white",
	},
	signupViewLinearGradient: {
		flex: 1,
	},
	signupView: {
		width: "100%",
		height: "100%",
		alignItems: "center",
	},
	signUpText: {
		color: "white",
		fontFamily: "Lato-Bold",
		fontSize: 42,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "center",
		backgroundColor: "transparent",
		marginTop: 89,
	},
	itSFreeText: {
		color: "white",
		fontFamily: "Lato-Regular",
		fontSize: 18,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		backgroundColor: "transparent",
		marginTop: 20,
	},
	signUpFieldsView: {
		backgroundColor: "white",
		borderRadius: 2,
		shadowColor: "rgba(0, 0, 0, 0.2)",
		shadowRadius: 25,
		shadowOpacity: 1,
		alignSelf: "stretch",
		height: 152,
		marginLeft: 20,
		marginRight: 20,
		marginTop: 70,
	},
	yourNicknameTextInput: {
		backgroundColor: "transparent",
		padding: 0,
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 15,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		height: 20,
		marginLeft: 15,
		marginRight: 18,
		marginTop: 14,
	},
	separatorView: {
		backgroundColor: "black",
		opacity: 0.1,
		height: 1,
		marginTop: 16,
	},
	yourSpacemailTextInput: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 15,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		padding: 0,
		height: 20,
		marginLeft: 15,
		marginRight: 18,
		marginTop: 14,
	},
	separatorTwoView: {
		backgroundColor: "black",
		opacity: 0.1,
		height: 1,
		marginTop: 16,
	},
	passwordTextInput: {
		color: "black",
		fontFamily: "Lato-Regular",
		fontSize: 15,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
		padding: 0,
		height: 20,
		marginLeft: 15,
		marginRight: 18,
		marginTop: 14,
	},
	tosView: {
		backgroundColor: "transparent",
		alignSelf: "stretch",
		height: 32,
		marginLeft: 25,
		marginRight: 25,
		marginTop: 15,
		flexDirection: "row",
		alignItems: "center",
	},
	iAgreeWithIntergaText: {
		color: "white",
		fontFamily: "Lato-Regular",
		fontSize: 13,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "left",
		backgroundColor: "transparent",
	},
	switchSwitch: {
		backgroundColor: "transparent",
		width: 51,
		height: 32,
	},
	signUpButton: {
		backgroundColor: "white",
		borderRadius: 2,
		shadowColor: "rgba(0, 0, 0, 0.2)",
		shadowRadius: 25,
		shadowOpacity: 1,
		flexDirection: "row",
		alignItems: "center",
		justifyContent: "center",
		padding: 0,
		alignSelf: "stretch",
		height: 60,
		marginLeft: 20,
		marginRight: 20,
		marginBottom: 10,
	},
	signUpButtonImage: {
		resizeMode: "contain",
		marginRight: 10,
	},
	signUpButtonText: {
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Bold",
		fontSize: 15,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "center",
	},
	logInView: {
		backgroundColor: "transparent",
		width: 232,
		height: 18,
		marginBottom: 20,
		flexDirection: "row",
		alignItems: "center",
	},
	alreadyGaveUpYourText: {
		color: "white",
		fontFamily: "Lato-Regular",
		fontSize: 15,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		backgroundColor: "transparent",
		marginLeft: 4,
	},
	logInButton: {
		backgroundColor: "transparent",
		flexDirection: "row",
		alignItems: "center",
		justifyContent: "center",
		padding: 0,
		width: 47,
		height: 18,
	},
	logInButtonImage: {
		resizeMode: "contain",
		marginRight: 10,
	},
	logInButtonText: {
		color: "white",
		fontFamily: "Lato-Bold",
		fontSize: 15,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "center",
	},
})
