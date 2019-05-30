/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import android.graphics.Color
import android.support.v7.widget.GridLayoutManager
import android.view.View
import android.view.Menu
import android.view.MenuItem
import android.graphics.PointF
import io.supernova.spacebook.R
import android.databinding.DataBindingUtil
import android.view.MenuInflater
import io.supernova.spacebook.adapter.ProfilePhotosActivityGalleryRecyclerViewAdapter
import io.supernova.uitoolkit.drawable.LinearGradientDrawable
import android.content.Intent
import io.supernova.uitoolkit.recycler.GridSpacingItemDecoration
import android.support.v7.widget.LinearLayoutManager
import io.supernova.spacebook.databinding.ProfilePhotosActivityBinding
import android.content.Context
import android.os.Bundle
import android.support.v7.widget.Toolbar
import android.support.v7.app.AppCompatActivity


class ProfilePhotosActivity: AppCompatActivity() {

	companion object {
		
		fun newIntent(context: Context): Intent {
		
			// Fill the created intent with the data you want to be passed to this Activity when it's opened.
			return Intent(context, ProfilePhotosActivity::class.java)
		}
	}
	
	private lateinit var binding: ProfilePhotosActivityBinding
	
	override fun onCreate(savedInstanceState: Bundle?) {
	
		super.onCreate(savedInstanceState)
		binding = DataBindingUtil.setContentView(this, R.layout.profile_photos_activity)
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
		
		// Configure Gallery component
		binding.galleryRecyclerView.layoutManager = GridLayoutManager(this, 1, LinearLayoutManager.VERTICAL, false)
		binding.galleryRecyclerView.adapter = ProfilePhotosActivityGalleryRecyclerViewAdapter()
		binding.galleryRecyclerView.addItemDecoration(GridSpacingItemDecoration(this.resources.getDimension(R.dimen.profile_photos_activity_gallery_recycler_view_spacing)))
		
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
}
