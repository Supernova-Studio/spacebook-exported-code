//
//  Login
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

import { LinearGradient } from "expo"
import { Text, TouchableOpacity, Image, StyleSheet, TextInput, View } from "react-native"
import React from "react"


export default class Login extends React.Component {

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

	onLoginPressed = () => {
	
		const { navigate } = this.props.navigation
		
		navigate("Untitled")
	}

	onForgotYourPasswordPressed = () => {
	
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
				style={styles.loginViewLinearGradient}>
				<View
					style={styles.loginView}>
					<Text
						style={styles.logInText}>Log in</Text>
					<Text
						style={styles.welcomeBackText}>Welcome back.{"\n"}The galaxy awaits you.</Text>
					<View
						style={styles.loginFieldsView}>
						<TextInput
							autoCorrect={false}
							placeholder="Your nickname"
							style={styles.yourNicknameTextInput}/>
						<View
							style={styles.separatorView}/>
						<TextInput
							autoCorrect={false}
							placeholder="Your password"
							secureTextEntry={true}
							style={styles.yourPasswordTextInput}/>
					</View>
					<View
						style={{
							flex: 1,
						}}/>
					<TouchableOpacity
						onPress={this.onLoginPressed}
						style={styles.loginButton}>
						<Image
							source={require("./../../assets/images/icon-log-in.png")}
							style={styles.loginButtonImage}/>
						<Text
							style={styles.loginButtonText}>LOG IN</Text>
					</TouchableOpacity>
					<TouchableOpacity
						onPress={this.onForgotYourPasswordPressed}
						style={styles.forgotYourPasswordButton}>
						<Text
							style={styles.forgotYourPasswordButtonText}>Forgot your password?</Text>
					</TouchableOpacity>
				</View>
			</LinearGradient>
	}
}

const styles = StyleSheet.create({
	navigationBarItem: {
	},
	navigationBarItemIcon: {
		tintColor: "white",
	},
	headerLeftContainer: {
		flexDirection: "row",
		marginLeft: 8,
	},
	loginViewLinearGradient: {
		flex: 1,
	},
	loginView: {
		width: "100%",
		height: "100%",
		alignItems: "center",
	},
	logInText: {
		color: "white",
		fontFamily: "Lato-Bold",
		fontSize: 42,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "center",
		backgroundColor: "transparent",
		marginTop: 114,
	},
	welcomeBackText: {
		color: "white",
		fontFamily: "Lato-Regular",
		fontSize: 18,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
		backgroundColor: "transparent",
		marginTop: 20,
	},
	loginFieldsView: {
		backgroundColor: "white",
		borderRadius: 2,
		shadowColor: "rgba(0, 0, 0, 0.2)",
		shadowRadius: 25,
		shadowOpacity: 1,
		alignSelf: "stretch",
		height: 101,
		marginLeft: 20,
		marginRight: 20,
		marginTop: 70,
	},
	yourNicknameTextInput: {
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
		marginRight: 15,
		marginTop: 14,
	},
	separatorView: {
		backgroundColor: "black",
		opacity: 0.1,
		height: 1,
		marginTop: 16,
	},
	yourPasswordTextInput: {
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
		marginRight: 15,
		marginTop: 14,
	},
	loginButton: {
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
		marginBottom: 11,
	},
	loginButtonText: {
		color: "rgb(217, 103, 110)",
		fontFamily: "Lato-Bold",
		fontSize: 15,
		fontStyle: "normal",
		fontWeight: "bold",
		textAlign: "center",
	},
	loginButtonImage: {
		resizeMode: "contain",
		marginRight: 10,
	},
	forgotYourPasswordButton: {
		backgroundColor: "transparent",
		flexDirection: "row",
		alignItems: "center",
		justifyContent: "center",
		padding: 0,
		width: 150,
		height: 18,
		marginBottom: 19,
	},
	forgotYourPasswordButtonText: {
		color: "white",
		fontFamily: "Lato-Regular",
		fontSize: 15,
		fontStyle: "normal",
		fontWeight: "normal",
		textAlign: "center",
	},
	forgotYourPasswordButtonImage: {
		resizeMode: "contain",
		marginRight: 10,
	},
})
