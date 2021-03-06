/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import android.support.v7.widget.Toolbar
import io.supernova.spacebook.R
import android.support.v7.app.AppCompatActivity
import android.content.Intent
import android.graphics.Color
import android.view.View
import android.view.MenuItem
import android.view.MenuInflater
import android.content.Context
import android.os.Bundle
import android.graphics.PointF
import io.supernova.uitoolkit.drawable.LinearGradientDrawable
import android.databinding.DataBindingUtil
import io.supernova.spacebook.databinding.SignupActivityBinding
import android.view.Menu


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
	
		// Configure Signup component
		binding.signupConstraintLayout.background = LinearGradientDrawable.Builder(this, PointF(0.31f, 1.1f), PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
		
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
		
		this.setupToolbar()
	}
	
	fun setupToolbar() {
	
		setSupportActionBar(binding.toolbar)
		supportActionBar?.setDisplayHomeAsUpEnabled(true)
		
		// Additional Toolbar setup code can go here.
	}
	
	fun onSwitchValueChanged() {
	
	}
	
	fun onSignUpPressed() {
	
		this.startTwoActivity()
	}
	
	fun onLogInPressed() {
	
		this.startLoginActivity()
	}
	
	fun onGroupPressed() {
	
		this.finish()
	}
	
	private fun startTwoActivity() {
	
		this.startActivity(TwoActivity.newIntent(this))
	}
	
	private fun startLoginActivity() {
	
		this.startActivity(LoginActivity.newIntent(this))
	}
}
