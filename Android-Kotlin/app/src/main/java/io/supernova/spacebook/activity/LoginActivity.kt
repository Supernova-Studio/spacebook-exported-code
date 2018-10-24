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
import io.supernova.spacebook.databinding.LoginActivityBinding
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
import android.graphics.Color
import io.supernova.uitoolkit.drawable.LinearGradientDrawable


class LoginActivity: AppCompatActivity() {

    companion object {
        fun newIntent(context: Context): Intent {
        
            // Fill the created intent with the data you want to be passed to this Activity when it's opened.
            return Intent(context, LoginActivity::class.java)
        }
    }
    
    private lateinit var binding: LoginActivityBinding
    override fun onCreate(savedInstanceState: Bundle?) {
    
        super.onCreate(savedInstanceState)
        binding = DataBindingUtil.setContentView(this, R.layout.login_activity)
        this.init()
    }
    private fun init() {
    
        // Configure Login component
        binding.loginConstraintLayout.background = LinearGradientDrawable.Builder(this, PointF(0.31f, 1.1f), PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
        
        // Configure Log in component
        val logInTextViewText = SpannableString(this.getString(R.string.login_activity_log_in_text_view_text))
        binding.logInTextView.text = logInTextViewText
        
        // Configure Login component
        binding.loginButton.setOnClickListener({ view ->
            this.onLoginPressed()
        })
        
        // Configure Forgot your password component
        binding.forgotYourPasswordButton.setOnClickListener({ view ->
            this.onForgotYourPasswordPressed()
        })
        
        setupToolbar()
    }
    fun setupToolbar() {
    
        setSupportActionBar(binding.toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        
        // Additional Toolbar setup code can go here.
    }
    fun onLoginPressed() {
    
        startTwoActivity()
    }
    fun onForgotYourPasswordPressed() {
    
    }
    private fun startTwoActivity() {
    
        this.startActivity(TwoActivity.newIntent(this))
    }
}




