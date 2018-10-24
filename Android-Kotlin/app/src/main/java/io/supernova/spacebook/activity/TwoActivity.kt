/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import io.supernova.spacebook.R
import android.graphics.PointF
import io.supernova.spacebook.fragment.MessagesActivity
import io.supernova.spacebook.fragment.ProfileActivity
import io.supernova.spacebook.fragment.TimelineActivity
import android.view.MenuItem
import android.databinding.DataBindingUtil
import android.content.Intent
import io.supernova.spacebook.adapter.TwoActivityPagerAdapter
import io.supernova.spacebook.databinding.TwoActivityBinding
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.content.Context
import android.graphics.Color
import io.supernova.uitoolkit.drawable.LinearGradientDrawable


class TwoActivity: AppCompatActivity() {

    companion object {
        fun newIntent(context: Context): Intent {
        
            // Fill the created intent with the data you want to be passed to this Activity when it's opened.
            return Intent(context, TwoActivity::class.java)
        }
    }
    
    private lateinit var binding: TwoActivityBinding
    override fun onCreate(savedInstanceState: Bundle?) {
    
        super.onCreate(savedInstanceState)
        binding = DataBindingUtil.setContentView(this, R.layout.two_activity)
        init()
    }
    fun init() {
    
        
        // Configure Navigation Bar #2 component
        binding.toolbar.background = LinearGradientDrawable.Builder(this, PointF(-0.01f, 0.51f), PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
        // Configure View Pager Adapter
        val fragments = listOf(TimelineActivity.newInstance(), MessagesActivity.newInstance(), ProfileActivity.newInstance())
        binding.viewPager.adapter = TwoActivityPagerAdapter(supportFragmentManager, fragments)
        binding.bottomNavigationBar.setOnNavigationItemSelectedListener({ menuItem ->
            onTabSelected(menuItem)
            true
        })
        
        setupToolbar()
    }
    private fun setupToolbar() {
    
        setSupportActionBar(binding.toolbar)
        
        // Additional Toolbar setup code can go here.
    }
    fun onTabSelected(menuItem: MenuItem) {
    
        when (menuItem.itemId) {
            R.id.timeline_activity_menu_item -> {
                binding.viewPager.setCurrentItem(0, true)
            }
            R.id.messages_activity_menu_item -> {
                binding.viewPager.setCurrentItem(1, true)
            }
            R.id.profile_activity_menu_item -> {
                binding.viewPager.setCurrentItem(2, true)
            }
        }
    }
}




