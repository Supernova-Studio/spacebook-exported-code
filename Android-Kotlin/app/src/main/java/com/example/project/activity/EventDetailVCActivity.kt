/*
 * EventDetailVCActivity
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
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar


class EventDetailVCActivity : AppCompatActivity() {

	companion object {

		fun newIntent(context: Context): Intent {

			// Fill the created intent with the data you want to be passed to this Activity when it's opened.

			return Intent(context, EventDetailVCActivity::class.java)
		}

	}


	override fun onCreate(savedInstanceState: Bundle?) {

		super.onCreate(savedInstanceState)
		this.setContentView(R.layout.event_detail_vcactivity)
		this.init()
	}


	override fun onCreateOptionsMenu(menu: Menu): Boolean {

		menuInflater.inflate(R.menu.menu_event_detail, menu)
		return true
	}


	override fun onOptionsItemSelected(menuItem: MenuItem): Boolean {

		when(menuItem.getItemId()) {
			R.id.item_two_menu_item -> {
				onItemTwoPressed()
				return true
			}
			android.R.id.home -> {
				finish()
				return true
			}
		}
		return super.onOptionsItemSelected(menuItem)
	}


	private fun setupToolbar() {

		val toolbar: Toolbar = findViewById(R.id.activity_event_detail_vcactivity_toolbar)
		setSupportActionBar(toolbar);
		supportActionBar!!.setDisplayHomeAsUpEnabled(true)
		
		// Additional Toolbar setup code can go here.

	}


	private fun init() {

		setupToolbar()
		
		// Additional Activity initialization code can go here.

	}


	private fun onItemTwoPressed() {


	}
}

