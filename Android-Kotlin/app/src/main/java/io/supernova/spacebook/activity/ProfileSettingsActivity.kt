/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import android.view.View
import android.view.Menu
import android.view.MenuItem
import android.graphics.PointF
import io.supernova.spacebook.databinding.ProfileSettingsActivityBinding
import io.supernova.spacebook.R
import android.databinding.DataBindingUtil
import android.view.MenuInflater
import io.supernova.uitoolkit.drawable.LinearGradientDrawable
import android.content.Intent
import android.content.Context
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.Toolbar
import android.graphics.Color


class ProfileSettingsActivity: AppCompatActivity() {

	companion object {
		
		fun newIntent(context: Context): Intent {
		
			// Fill the created intent with the data you want to be passed to this Activity when it's opened.
			return Intent(context, ProfileSettingsActivity::class.java)
		}
	}
	
	private lateinit var binding: ProfileSettingsActivityBinding
	
	override fun onCreate(savedInstanceState: Bundle?) {
	
		super.onCreate(savedInstanceState)
		binding = DataBindingUtil.setContentView(this, R.layout.profile_settings_activity)
		this.init()
	}
	
	override fun onOptionsItemSelected(menuItem: MenuItem): Boolean {
	
		when (menuItem.itemId) {
			android.R.id.home -> {
				this.onGroupPressed()
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
		
		// Configure Slide component
		binding.slideSwitch.setOnClickListener({ view ->
			this.onSlideValueChanged()
		})
		
		this.setupToolbar()
	}
	
	fun setupToolbar() {
	
		setSupportActionBar(binding.toolbar)
		supportActionBar?.setDisplayHomeAsUpEnabled(true)
		
		// Additional Toolbar setup code can go here.
	}
	
	fun onSlideValueChanged() {
	
	}
	
	fun onGroupPressed() {
	
		this.finish()
	}
}
