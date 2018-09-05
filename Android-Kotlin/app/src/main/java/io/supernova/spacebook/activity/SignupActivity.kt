/*
 * SignupActivity
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.activity

import android.support.v7.app.AppCompatActivity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import io.supernova.spacebook.R
import java.util.*
import io.supernova.uitoolkit.drawable.LinearGradientDrawable
import android.widget.Button
import android.graphics.PointF
import android.support.constraint.ConstraintLayout
import android.graphics.Color
import android.widget.TextView
import android.widget.Switch
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar


class SignupActivity : AppCompatActivity() {

	companion object {

		fun newIntent(context: Context): Intent {

			// Fill the created intent with the data you want to be passed to this Activity when it's opened.
			return Intent(context, SignupActivity::class.java)
		}

	}


	private lateinit var signupConstraintLayout: ConstraintLayout
	private lateinit var signUpTextView: TextView
	private lateinit var signUpButton: View
	private lateinit var logInButton: View
	private lateinit var switchSwitch: Switch

	override fun onCreate(savedInstanceState: Bundle?) {

		super.onCreate(savedInstanceState)
		this.setContentView(R.layout.signup_activity)
		this.init()
	}


	override fun onCreateOptionsMenu(menu: Menu): Boolean {

		menuInflater.inflate(R.menu.menu_signup, menu)
		return true
	}


	override fun onOptionsItemSelected(menuItem: MenuItem): Boolean {

		when (menuItem.getItemId()) {
			android.R.id.home -> {
				finish()
				return true
			}
		}
		return super.onOptionsItemSelected(menuItem)
	}


	private fun setupToolbar() {

		val toolbar: Toolbar = findViewById(R.id.signup_activity_toolbar)
		setSupportActionBar(toolbar);
		supportActionBar!!.setDisplayHomeAsUpEnabled(true)
		
		// Additional Toolbar setup code can go here.
	}


	private fun init() {

		signupConstraintLayout = this.findViewById(R.id.signup_constraint_layout)
		// Configure Signup component
		signupConstraintLayout.setBackground(LinearGradientDrawable.Builder(this, PointF(0.31f, 1.1f), PointF(0.69f, -0.1f))
				.addStop(0f, Color.argb(255, 247, 132, 97))
				.addStop(1f, Color.argb(255, 139, 27, 139))
				.build())
		
		signUpTextView = this.findViewById(R.id.sign_up_text_view)
		
		signUpButton = this.findViewById(R.id.sign_up_button)
		// Configure Sign Up component
		signUpButton.setOnClickListener({ view -> 
			onSignUpPressed()
		})
		
		logInButton = this.findViewById(R.id.log_in_button)
		// Configure Log In! component
		logInButton.setOnClickListener({ view -> 
			onLogInPressed()
		})
		
		switchSwitch = this.findViewById(R.id.switch_switch)
		// Configure switch component
		switchSwitch.setOnClickListener({ view -> 
			onSwitchValueChanged()
		})
		
		setupToolbar()
		
		// Additional Activity initialization code can go here.
	}


	private fun onLogInPressed() {

		this.startLoginActivity()
	}


	private fun onSwitchValueChanged() {


	}


	private fun onSignUpPressed() {

		this.startTabBarHolderActivityOne()
	}


	private fun startTabBarHolderActivityOne() {

		this.startActivity(TabBarHolderActivityOne.newIntent(this))
	}


	private fun startLoginActivity() {

		this.startActivity(LoginActivity.newIntent(this))
	}
}

