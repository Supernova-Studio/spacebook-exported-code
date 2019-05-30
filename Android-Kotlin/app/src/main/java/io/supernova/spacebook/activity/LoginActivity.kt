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
import android.view.Menu
import io.supernova.spacebook.databinding.LoginActivityBinding


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
	
		// Configure Login component
		binding.loginConstraintLayout.background = LinearGradientDrawable.Builder(this, PointF(0.31f, 1.1f), PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
		
		// Configure Login component
		binding.loginButton.setOnClickListener({ view ->
			this.onLoginPressed()
		})
		
		// Configure Forgot your password component
		binding.forgotYourPasswordButton.setOnClickListener({ view ->
			this.onForgotYourPasswordPressed()
		})
		
		this.setupToolbar()
	}
	
	fun setupToolbar() {
	
		setSupportActionBar(binding.toolbar)
		supportActionBar?.setDisplayHomeAsUpEnabled(true)
		
		// Additional Toolbar setup code can go here.
	}
	
	fun onLoginPressed() {
	
		this.startTwoActivity()
	}
	
	fun onForgotYourPasswordPressed() {
	
	}
	
	fun onGroupPressed() {
	
		this.finish()
	}
	
	private fun startTwoActivity() {
	
		this.startActivity(TwoActivity.newIntent(this))
	}
}
