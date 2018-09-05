/*
 * TabBarHolderActivityOne
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
import android.support.v4.view.ViewPager
import android.support.v4.app.Fragment
import android.support.design.widget.BottomNavigationView
import android.support.annotation.NonNull
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar
import io.supernova.spacebook.fragment.TimelineActivity
import io.supernova.spacebook.fragment.ProfileActivity
import io.supernova.spacebook.fragment.MessagesActivity
import io.supernova.spacebook.adapter.TabBarHolderActivityOnePagerAdapter
import android.graphics.PointF
import io.supernova.uitoolkit.drawable.LinearGradientDrawable




class TabBarHolderActivityOne : AppCompatActivity() {

	companion object {

		fun newIntent(context: Context): Intent {

			// Fill the created intent with the data you want to be passed to this Activity when it's opened.
			return Intent(context, TabBarHolderActivityOne::class.java)
		}

	}


	override fun onCreate(savedInstanceState: Bundle?) {

		super.onCreate(savedInstanceState)
		this.setContentView(R.layout.tab_bar_holder_activity_one)
		this.init()
	}


	private fun init() {

		val fragments: List<Fragment> = listOf(TimelineActivity.newInstance(), ProfileActivity.newInstance(), MessagesActivity.newInstance())
		val adapter: TabBarHolderActivityOnePagerAdapter = TabBarHolderActivityOnePagerAdapter(supportFragmentManager, fragments)
		val viewPager: ViewPager = findViewById(R.id.view_pager)
		viewPager.setAdapter(adapter)
		val tabBar: BottomNavigationView = findViewById(R.id.tab_bar)
		tabBar.setOnNavigationItemSelectedListener { 
			onTabSelected(it.itemId)
			true
		}
		setupToolbar()
		
		// Additional Activity initialization code can go here.
	}


	private fun setupToolbar() {

		val toolbar: Toolbar = findViewById(R.id.tab_bar_holder_activity_one_toolbar)
		setSupportActionBar(toolbar)

		toolbar.background = LinearGradientDrawable.Builder(this, PointF(0f, 0.5f), PointF(1f, 0.5f))
				.addStop(0f, Color.rgb(247, 133, 97))
				.addStop(1f, Color.rgb(140, 25, 140))
				.build()
		
		// Additional Toolbar setup code can go here.
	}


	private fun onTabSelected(menuItemId: Int) {

		val viewPager: ViewPager = findViewById(R.id.view_pager)
		when (menuItemId) {
			R.id.tab_bar_item_1 -> viewPager.setCurrentItem(0, true);
			R.id.tab_bar_item_2 -> viewPager.setCurrentItem(1, true);
			R.id.tab_bar_item_3 -> viewPager.setCurrentItem(2, true);
		}
	}
}

