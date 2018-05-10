/*
 * SignupVCActivity
 * Spacebook
 *
 * Created by [Author].
 * Copyright © 2018 Supernova. All rights reserved.
 */

package com.example.project.activity

import android.support.v7.app.AppCompatActivity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import com.example.project.R
import java.util.*
import android.widget.Switch
import android.widget.Button
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar


class SignupVCActivity : AppCompatActivity() {

	companion object {

		fun newIntent(context: Context): Intent {

			// Fill the created intent with the data you want to be passed to this Activity when it's opened.

			return Intent(context, SignupVCActivity::class.java)
		}

	}


	private lateinit var signUpButton: View
	private lateinit var logInButton: View
	private lateinit var switchSwitch: Switch

	override fun onCreate(savedInstanceState: Bundle?) {

		super.onCreate(savedInstanceState)
		this.setContentView(R.layout.signup_vcactivity)
		this.init()
	}


	override fun onCreateOptionsMenu(menu: Menu): Boolean {

		menuInflater.inflate(R.menu.menu_signup, menu)
		return true
	}


	override fun onOptionsItemSelected(menuItem: MenuItem): Boolean {

		when(menuItem.getItemId()) {
			android.R.id.home -> {
				finish()
				return true
			}
		}
		return super.onOptionsItemSelected(menuItem)
	}


	private fun setupToolbar() {

		val toolbar: Toolbar = findViewById(R.id.activity_signup_vcactivity_toolbar)
		setSupportActionBar(toolbar);
		supportActionBar!!.setDisplayHomeAsUpEnabled(true)
		
		// Additional Toolbar setup code can go here.

	}


	private fun init() {

		signUpButton = this.findViewById(R.id.sign_up_button)
		logInButton = this.findViewById(R.id.log_in_button)
		switchSwitch = this.findViewById(R.id.switch_switch)
		signUpButton.setOnClickListener({ view -> 
			onSignUpPressed()
		})
		logInButton.setOnClickListener({ view -> 
			onLogInPressed()
		})
		switchSwitch.setOnClickListener({ view -> 
			onSwitchValueChanged()
		})
		setupToolbar()
		
		// Additional Activity initialization code can go here.

	}


	private fun onLogInPressed() {

		this.startLoginVCActivity()
	}


	private fun onSwitchValueChanged() {


	}


	private fun onSignUpPressed() {

		this.startTabBarHolderActivityOne()
	}


	private fun startTabBarHolderActivityOne() {

		this.startActivity(TabBarHolderActivityOne.newIntent(this))
	}


	private fun startLoginVCActivity() {

		this.startActivity(LoginVCActivity.newIntent(this))
	}
}

