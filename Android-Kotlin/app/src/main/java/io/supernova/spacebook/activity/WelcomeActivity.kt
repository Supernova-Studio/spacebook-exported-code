/**
 * Created by Supernova.
 */

package io.supernova.spacebook.activity

import android.animation.Keyframe
import android.os.Bundle
import android.animation.PropertyValuesHolder
import android.view.View
import io.supernova.spacebook.R
import android.support.v4.view.animation.PathInterpolatorCompat
import android.animation.AnimatorInflater
import android.graphics.PointF
import android.databinding.DataBindingUtil
import android.animation.Animator
import android.animation.AnimatorSet
import io.supernova.spacebook.databinding.WelcomeActivityBinding
import io.supernova.uitoolkit.drawable.LinearGradientDrawable
import android.content.Context
import android.support.v7.app.AppCompatActivity
import android.animation.ObjectAnimator
import android.content.Intent
import android.graphics.Color


class WelcomeActivity: AppCompatActivity() {

	companion object {
		
		fun newIntent(context: Context): Intent {
		
			// Fill the created intent with the data you want to be passed to this Activity when it's opened.
			return Intent(context, WelcomeActivity::class.java)
		}
	}
	
	private lateinit var binding: WelcomeActivityBinding
	
	override fun onCreate(savedInstanceState: Bundle?) {
	
		super.onCreate(savedInstanceState)
		binding = DataBindingUtil.setContentView(this, R.layout.welcome_activity)
		this.init()
		
		this.startAnimationOne()
	}
	
	private fun init() {
	
		// Configure Welcome component
		binding.welcomeConstraintLayout.background = LinearGradientDrawable.Builder(this, PointF(0.31f, 1.1f), PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build()
		
		// Configure Sign Up component
		binding.signUpButton.setOnClickListener({ view ->
			this.onSignUpPressed()
		})
		
		// Configure Log In component
		binding.logInButton.setOnClickListener({ view ->
			this.onLogInPressed()
		})
	}
	
	fun onSignUpPressed() {
	
		this.startSignupActivity()
	}
	
	fun onLogInPressed() {
	
		this.startLoginActivity()
	}
	
	private fun startLoginActivity() {
	
		this.startActivity(LoginActivity.newIntent(this))
	}
	
	private fun startSignupActivity() {
	
		this.startActivity(SignupActivity.newIntent(this))
	}
	
	fun startAnimationOne() {
	
		val kf1 = Keyframe.ofFloat(0.0f, -45f)
		val kf2 = Keyframe.ofFloat(0.7f, -45f)
		val kf3 = Keyframe.ofFloat(1.0f, 0f)
		
		val pvh1 = PropertyValuesHolder.ofKeyframe(View.ROTATION, kf1, kf2, kf3)
		
		val animator1 = ObjectAnimator.ofPropertyValuesHolder(binding.logoImageView, pvh1)
		animator1.duration = 1000
		animator1.interpolator = PathInterpolatorCompat.create(0.42f, 0f, 0.58f, 1f)
		
		val animator2 = AnimatorInflater.loadAnimator(this, R.animator.welcomeactivity_animation_group_one_element_one)
		val set1 = AnimatorSet()
		set1.playTogether(animator1, animator2)
		set1.setTarget(binding.logoImageView)
		val set2 = AnimatorSet()
		set2.playTogether(set1)
		set2.start()
	}
}
