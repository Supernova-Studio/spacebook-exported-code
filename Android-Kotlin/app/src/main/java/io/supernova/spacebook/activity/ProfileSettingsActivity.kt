/*
 * ProfileSettingsActivity
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.activity

import android.support.v7.app.AppCompatActivity
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.view.View
import io.supernova.spacebook.R
import java.util.*
import android.widget.Switch
import android.widget.TextView
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar
import android.graphics.PointF
import io.supernova.uitoolkit.drawable.LinearGradientDrawable




class ProfileSettingsActivity : AppCompatActivity() {

	companion object {

		fun newIntent(context: Context): Intent {

			// Fill the created intent with the data you want to be passed to this Activity when it's opened.
			return Intent(context, ProfileSettingsActivity::class.java)
		}

	}


	private lateinit var detailsTextView: TextView
	private lateinit var informationTextView: TextView
	private lateinit var slideSwitch: Switch

	override fun onCreate(savedInstanceState: Bundle?) {

		super.onCreate(savedInstanceState)
		this.setContentView(R.layout.profile_settings_activity)
		this.init()
	}


	override fun onCreateOptionsMenu(menu: Menu): Boolean {

		menuInflater.inflate(R.menu.menu_profile_settings, menu)
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

		val toolbar: Toolbar = findViewById(R.id.profile_settings_activity_toolbar)
		setSupportActionBar(toolbar);
		supportActionBar!!.setDisplayHomeAsUpEnabled(true)

		toolbar.background = LinearGradientDrawable.Builder(this, PointF(0f, 0.5f), PointF(1f, 0.5f))
				.addStop(0f, Color.rgb(247, 133, 97))
				.addStop(1f, Color.rgb(140, 25, 140))
				.build()
		
		// Additional Toolbar setup code can go here.
	}


	private fun init() {

		detailsTextView = this.findViewById(R.id.details_text_view)
		
		informationTextView = this.findViewById(R.id.information_text_view)
		
		slideSwitch = this.findViewById(R.id.slide_switch)
		// Configure Slide component
		slideSwitch.setOnClickListener({ view -> 
			onSlideValueChanged()
		})
		
		setupToolbar()
		
		// Additional Activity initialization code can go here.
	}


	private fun onSlideValueChanged() {


	}
}

