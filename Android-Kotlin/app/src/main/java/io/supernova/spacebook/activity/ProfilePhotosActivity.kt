/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import io.supernova.spacebook.R
import io.supernova.spacebook.databinding.ProfilePhotosActivityBinding
import android.support.v7.widget.GridLayoutManager
import android.graphics.PointF
import android.view.View
import android.view.MenuItem
import android.support.v7.widget.Toolbar
import android.databinding.DataBindingUtil
import android.content.Intent
import android.view.Menu
import io.supernova.spacebook.adapter.ProfilePhotosActivityGalleryRecyclerViewAdapter
import android.support.v7.app.AppCompatActivity
import android.view.MenuInflater
import android.os.Bundle
import android.content.Context
import android.support.v7.widget.LinearLayoutManager
import io.supernova.uitoolkit.drawable.LinearGradientDrawable
import android.graphics.Color


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
    private fun init() {
    
        // Configure Gallery component
        binding.galleryRecyclerView.layoutManager = GridLayoutManager(this, 1, LinearLayoutManager.VERTICAL, false)
        binding.galleryRecyclerView.adapter = ProfilePhotosActivityGalleryRecyclerViewAdapter()
        
        // Configure Navigation Bar #2 component
        binding.toolbar.background = LinearGradientDrawable.Builder(this, PointF(-0.01f, 0.51f), PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
        
        setupToolbar()
    }
    fun setupToolbar() {
    
        setSupportActionBar(binding.toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        
        // Additional Toolbar setup code can go here.
    }
}




