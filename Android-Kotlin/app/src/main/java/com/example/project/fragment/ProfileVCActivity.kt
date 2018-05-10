/*
 * ProfileVCActivity
 * Spacebook
 *
 * Created by [Author].
 * Copyright © 2018 Supernova. All rights reserved.
 */

package com.example.project.fragment

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import java.util.*
import com.example.project.R
import com.example.project.activity.*
import android.support.v7.widget.GridLayoutManager
import com.example.project.adapter.ProfileVCActivityPhotosRecyclerViewAdapter
import android.support.v7.widget.RecyclerView
import android.support.v7.widget.LinearLayoutManager
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar


class ProfileVCActivity() : Fragment() {

	companion object {

		fun newInstance(): ProfileVCActivity {

			// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.

			return ProfileVCActivity()
		}

	}


	private lateinit var photosRecyclerView: RecyclerView

	init {
		setHasOptionsMenu(true)
	}

	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {

		return inflater.inflate(R.layout.profile_vcactivity, container, false)
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

		when(menuItem.getItemId()) {
			R.id.item_menu_item -> {
				onItemPressed()
				return true
			}
		}
		return super.onOptionsItemSelected(menuItem)
	}


	private fun init() {

		photosRecyclerView = view!!.findViewById(R.id.photos_recycler_view)
		photosRecyclerView.setLayoutManager(GridLayoutManager(context, 1, LinearLayoutManager.HORIZONTAL, false))
		photosRecyclerView.setAdapter(ProfileVCActivityPhotosRecyclerViewAdapter())
		
		// Additional Fragment initialization code can go here.

	}


	protected fun onItemPressed() {

		this.startProfileSettingsVCActivity();
	}


	private fun startProfileSettingsVCActivity() {

		context.startActivity(ProfileSettingsVCActivity.newIntent(context))
	}
}

