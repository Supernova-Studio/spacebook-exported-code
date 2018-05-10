/*
 * LoginVCActivity
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
import android.widget.Button
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar


class LoginVCActivity : AppCompatActivity() {

	companion object {

		fun newIntent(context: Context): Intent {

			// Fill the created intent with the data you want to be passed to this Activity when it's opened.

			return Intent(context, LoginVCActivity::class.java)
		}

	}


	private lateinit var loginButton: View
	private lateinit var forgotYourPasswordButton: View

	override fun onCreate(savedInstanceState: Bundle?) {

		super.onCreate(savedInstanceState)
		this.setContentView(R.layout.login_vcactivity)
		this.init()
	}


	override fun onCreateOptionsMenu(menu: Menu): Boolean {

		menuInflater.inflate(R.menu.menu_login, menu)
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

		val toolbar: Toolbar = findViewById(R.id.activity_login_vcactivity_toolbar)
		setSupportActionBar(toolbar);
		supportActionBar!!.setDisplayHomeAsUpEnabled(true)
		
		// Additional Toolbar setup code can go here.

	}


	private fun init() {

		loginButton = this.findViewById(R.id.login_button)
		forgotYourPasswordButton = this.findViewById(R.id.forgot_your_password_button)
		loginButton.setOnClickListener({ view -> 
			onLoginPressed()
		})
		forgotYourPasswordButton.setOnClickListener({ view -> 
			onForgotYourPasswordPressed()
		})
		setupToolbar()
		
		// Additional Activity initialization code can go here.

	}


	private fun onForgotYourPasswordPressed() {


	}


	private fun onLoginPressed() {

		this.startTabBarHolderActivityOne()
	}


	private fun startTabBarHolderActivityOne() {

		this.startActivity(TabBarHolderActivityOne.newIntent(this))
	}
}

