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
import io.supernova.spacebook.databinding.SignupActivityBinding
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


class SignupActivity: AppCompatActivity() {

    companion object {
        fun newIntent(context: Context): Intent {
        
            // Fill the created intent with the data you want to be passed to this Activity when it's opened.
            return Intent(context, SignupActivity::class.java)
        }
    }
    
    private lateinit var binding: SignupActivityBinding
    override fun onCreate(savedInstanceState: Bundle?) {
    
        super.onCreate(savedInstanceState)
        binding = DataBindingUtil.setContentView(this, R.layout.signup_activity)
        this.init()
    }
    private fun init() {
    
        // Configure Signup component
        binding.signupConstraintLayout.background = LinearGradientDrawable.Builder(this, PointF(0.31f, 1.1f), PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
        
        // Configure Sign up component
        val signUpTextViewText = SpannableString(this.getString(R.string.signup_activity_sign_up_text_view_text))
        binding.signUpTextView.text = signUpTextViewText
        
        // Configure switch component
        binding.switchSwitch.setOnClickListener({ view ->
            this.onSwitchValueChanged()
        })
        
        // Configure Sign Up component
        binding.signUpButton.setOnClickListener({ view ->
            this.onSignUpPressed()
        })
        
        // Configure Log In! component
        binding.logInButton.setOnClickListener({ view ->
            this.onLogInPressed()
        })
        
        setupToolbar()
    }
    fun setupToolbar() {
    
        setSupportActionBar(binding.toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        
        // Additional Toolbar setup code can go here.
    }
    fun onSwitchValueChanged() {
    
    }
    fun onSignUpPressed() {
    
        startTwoActivity()
    }
    fun onLogInPressed() {
    
        startLoginActivity()
    }
    private fun startTwoActivity() {
    
        this.startActivity(TwoActivity.newIntent(this))
    }
    private fun startLoginActivity() {
    
        this.startActivity(LoginActivity.newIntent(this))
    }
}




