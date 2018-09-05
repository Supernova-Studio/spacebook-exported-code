/*
 * ProfileActivity
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.fragment

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import java.util.*
import io.supernova.spacebook.R
import io.supernova.spacebook.activity.*
import android.support.v7.widget.GridLayoutManager
import io.supernova.spacebook.adapter.ProfileActivityPhotosRecyclerViewAdapter
import android.support.v7.widget.RecyclerView
import android.widget.TextView
import android.support.v7.widget.LinearLayoutManager
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar


class ProfileActivity() : Fragment() {

	companion object {

		fun newInstance(): ProfileActivity {

			// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.
			return ProfileActivity()
		}

	}


	private lateinit var drWhatTextView: TextView
	private lateinit var travelerDreamerTextView: TextView
	private lateinit var latestPhotosTextView: TextView
	private lateinit var photosRecyclerView: RecyclerView

	init {
		setHasOptionsMenu(true)
	}

	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {

		return inflater.inflate(R.layout.profile_activity, container, false)
	}


	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {

		super.onViewCreated(view, savedInstanceState)
		init()
	}


	override fun onCreateOptionsMenu(menu: Menu, menuInflater: MenuInflater) {

		super.onCreateOptionsMenu(menu, menuInflater)
		menuInflater.inflate(R.menu.menu_profile, menu)
	}


	override fun onOptionsItemSelected(menuItem: MenuItem): Boolean {

		when (menuItem.getItemId()) {
			R.id.left_item_menu_item -> {
				onLeftItemPressed()
				return true
			}
		}
		return super.onOptionsItemSelected(menuItem)
	}


	private fun init() {

		drWhatTextView = view!!.findViewById(R.id.dr_what_text_view)
		
		travelerDreamerTextView = view!!.findViewById(R.id.traveler_dreamer_text_view)
		
		latestPhotosTextView = view!!.findViewById(R.id.latest_photos_text_view)
		
		photosRecyclerView = view!!.findViewById(R.id.photos_recycler_view)
		// Configure Photos component
		photosRecyclerView.setLayoutManager(GridLayoutManager(context, 1, LinearLayoutManager.HORIZONTAL, false))
		photosRecyclerView.setAdapter(ProfileActivityPhotosRecyclerViewAdapter())
		
		// Additional Fragment initialization code can go here.
	}


	protected fun onLeftItemPressed() {

		this.startProfileSettingsActivity();
	}


	private fun startProfileSettingsActivity() {

		context.startActivity(ProfileSettingsActivity.newIntent(context))
	}
}

