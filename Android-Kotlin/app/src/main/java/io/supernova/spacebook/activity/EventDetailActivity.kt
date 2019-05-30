/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import android.databinding.DataBindingUtil
import android.content.Context
import android.graphics.Color
import android.view.MenuInflater
import android.view.Menu
import android.content.Intent
import android.support.v7.widget.Toolbar
import android.support.v7.app.AppCompatActivity
import io.supernova.spacebook.R
import android.view.View
import io.supernova.uitoolkit.drawable.LinearGradientDrawable
import android.view.MenuItem
import io.supernova.spacebook.databinding.EventDetailActivityBinding
import android.os.Bundle
import android.graphics.PointF


class EventDetailActivity: AppCompatActivity() {

	companion object {
		
		fun newIntent(context: Context): Intent {
		
			// Fill the created intent with the data you want to be passed to this Activity when it's opened.
			return Intent(context, EventDetailActivity::class.java)
		}
	}
	
	private lateinit var binding: EventDetailActivityBinding
	
	override fun onCreate(savedInstanceState: Bundle?) {
	
		super.onCreate(savedInstanceState)
		binding = DataBindingUtil.setContentView(this, R.layout.event_detail_activity)
		this.init()
	}
	
	override fun onCreateOptionsMenu(menu: Menu): Boolean {
	
		menuInflater.inflate(R.menu.event_detail_activity_menu, menu)
		return true
	}
	
	override fun onOptionsItemSelected(menuItem: MenuItem): Boolean {
	
		when (menuItem.itemId) {
			android.R.id.home -> {
				this.onGroupPressed()
				return true
			}
			R.id.left_item_menu_item -> {
				this.onLeftItemPressed()
				return true
			}
			else -> {
				return super.onOptionsItemSelected(menuItem)
			}
		}
	}
	
	private fun init() {
	
		// Configure Navigation Bar #2 component
		binding.toolbar.background = LinearGradientDrawable.Builder(this, PointF(-0.01f, 0.51f), PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
		
		this.setupToolbar()
	}
	
	fun setupToolbar() {
	
		setSupportActionBar(binding.toolbar)
		supportActionBar?.setDisplayHomeAsUpEnabled(true)
		
		// Additional Toolbar setup code can go here.
	}
	
	fun onGroupPressed() {
	
		this.finish()
	}
	
	fun onLeftItemPressed() {
	
	}
}
