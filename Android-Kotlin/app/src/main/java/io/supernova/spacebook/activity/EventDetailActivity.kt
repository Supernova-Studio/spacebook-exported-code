/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import io.supernova.spacebook.R
import android.graphics.PointF
import android.view.View
import android.view.MenuItem
import android.support.v7.widget.Toolbar
import android.databinding.DataBindingUtil
import android.content.Intent
import android.view.Menu
import android.support.v7.app.AppCompatActivity
import io.supernova.spacebook.databinding.EventDetailActivityBinding
import android.os.Bundle
import android.view.MenuInflater
import android.content.Context
import android.graphics.Color
import io.supernova.uitoolkit.drawable.LinearGradientDrawable


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
    private fun init() {
    
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




