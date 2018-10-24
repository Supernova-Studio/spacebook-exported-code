/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import io.supernova.spacebook.R
import android.text.SpannableString
import android.text.style.ForegroundColorSpan
import android.graphics.PointF
import android.text.Spannable
import android.view.View
import android.view.MenuItem
import android.support.v7.widget.Toolbar
import android.view.Menu
import android.content.Intent
import android.text.style.RelativeSizeSpan
import android.databinding.DataBindingUtil
import android.support.v7.app.AppCompatActivity
import android.view.MenuInflater
import android.os.Bundle
import android.content.Context
import io.supernova.spacebook.databinding.ProfileSettingsActivityBinding
import android.graphics.Color
import io.supernova.uitoolkit.drawable.LinearGradientDrawable


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
    private fun init() {
    
        // Configure Details component
        val detailsTextViewText = SpannableString(this.getString(R.string.profile_settings_activity_details_text_view_text))
        binding.detailsTextView.text = detailsTextViewText
        
        // Configure Information component
        val informationTextViewText = SpannableString(this.getString(R.string.profile_settings_activity_information_text_view_text))
        binding.informationTextView.text = informationTextViewText
        
        // Configure Slide component
        binding.slideSwitch.setOnClickListener({ view ->
            this.onSlideValueChanged()
        })
        
        // Configure Navigation Bar #2 component
        binding.toolbar.background = LinearGradientDrawable.Builder(this, PointF(-0.01f, 0.51f), PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
        
        setupToolbar()
    }
    fun setupToolbar() {
    
        setSupportActionBar(binding.toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        
        // Additional Toolbar setup code can go here.
    }
    fun onSlideValueChanged() {
    
    }
}




