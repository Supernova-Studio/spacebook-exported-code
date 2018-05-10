/*
 * TabBarHolderActivityOne
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
import android.support.v4.view.ViewPager
import android.support.v4.app.Fragment
import android.support.design.widget.BottomNavigationView
import android.support.annotation.NonNull
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.support.v7.widget.Toolbar
import com.example.project.fragment.TimelineVCActivity
import com.example.project.fragment.ProfileVCActivity
import com.example.project.fragment.MessagesVCActivity
import com.example.project.adapter.TabBarHolderActivityOnePagerAdapter


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

		val fragments: List<Fragment> = listOf(TimelineVCActivity.newInstance(), ProfileVCActivity.newInstance(), MessagesVCActivity.newInstance())
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

		val toolbar: Toolbar = findViewById(R.id.activity_tab_bar_holder_activity_one_toolbar)
		setSupportActionBar(toolbar);
		
		// Additional Toolbar setup code can go here.

	}


	private fun onTabSelected(menuItemId: Int) {

		val viewPager: ViewPager = findViewById(R.id.view_pager)
		when(menuItemId) {
			R.id.tab_bar_item_1 -> viewPager.setCurrentItem(0, true)
			R.id.tab_bar_item_2 -> viewPager.setCurrentItem(1, true)
			R.id.tab_bar_item_3 -> viewPager.setCurrentItem(2, true)
		}
	}
}

