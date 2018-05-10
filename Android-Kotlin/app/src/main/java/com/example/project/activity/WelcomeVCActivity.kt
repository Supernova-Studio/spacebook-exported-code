/*
 * WelcomeVCActivity
 * Spacebook
 *
 * Created by [Author].
 * Copyright © 2018 Supernova. All rights reserved.
 */

package com.example.project.activity

import android.support.v7.app.AppCompatActivity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import com.example.project.R
import java.util.*
import android.widget.ImageView
import android.widget.Button
import android.animation.Animator
import android.animation.AnimatorInflater
import android.animation.AnimatorSet
import android.animation.Keyframe
import android.animation.ObjectAnimator
import android.animation.PropertyValuesHolder
import android.support.v4.view.animation.PathInterpolatorCompat


class WelcomeVCActivity : AppCompatActivity() {

	companion object {

		fun newIntent(context: Context): Intent {

			// Fill the created intent with the data you want to be passed to this Activity when it's opened.

			return Intent(context, WelcomeVCActivity::class.java)
		}

	}


	private lateinit var logoImageView: ImageView
	private lateinit var logInButton: View
	private lateinit var signUpButton: View

	override fun onCreate(savedInstanceState: Bundle?) {

		super.onCreate(savedInstanceState)
		this.setContentView(R.layout.welcome_vcactivity)
		this.init()
	}


	private fun init() {

		logoImageView = this.findViewById(R.id.logo_image_view)
		logInButton = this.findViewById(R.id.log_in_button)
		signUpButton = this.findViewById(R.id.sign_up_button)
		logInButton.setOnClickListener({ view -> 
			onLogInPressed()
		})
		signUpButton.setOnClickListener({ view -> 
			onSignUpPressed()
		})
		startAnimationGroupOne()
		
		// Additional Activity initialization code can go here.

	}


	private fun onLogInPressed() {

		this.startAnimationGroupThree()
		this.startLoginVCActivity()
	}


	private fun onSignUpPressed() {

		this.startAnimationGroupTwo()
		this.startSignupVCActivity()
	}


	private fun startLoginVCActivity() {

		this.startActivity(LoginVCActivity.newIntent(this))
	}


	private fun startSignupVCActivity() {

		this.startActivity(SignupVCActivity.newIntent(this))
	}


	private fun startAnimationGroupOne() {

		startGroup1Animation1()
	}


	private fun startGroup1Animation1() {

		val kf1: Keyframe = Keyframe.ofFloat(0.0f, -45f)
		val kf2: Keyframe = Keyframe.ofFloat(0.8f, -45f)
		val kf3: Keyframe = Keyframe.ofFloat(1.0f, 0f)

		val pvh1: PropertyValuesHolder = PropertyValuesHolder.ofKeyframe(View.ROTATION, kf1, kf2, kf3)

		val animator1: Animator = ObjectAnimator.ofPropertyValuesHolder(findViewById<View>(R.id.logo_image_view), pvh1)
		animator1.setDuration(1000)
		animator1.setInterpolator(PathInterpolatorCompat.create(0.1f, 0.631640625f, 0.58f, 1.0f))

		val animator2: Animator = AnimatorInflater.loadAnimator(this, R.animator.animation_group_one_animation_element_one)
		val animatorSet: AnimatorSet = AnimatorSet()
		animatorSet.playTogether(animator1, animator2)
		animatorSet.setTarget(findViewById(R.id.logo_image_view))
		animatorSet.start()
	}


	private fun startAnimationGroupTwo() {

		startGroup2Animation1()
	}


	private fun startGroup2Animation1() {

		val kf1: Keyframe = Keyframe.ofFloat(0.0f, 0.3f)
		val kf2: Keyframe = Keyframe.ofFloat(0.2f, 1.1f)
		val kf3: Keyframe = Keyframe.ofFloat(0.4f, 0.9f)
		val kf4: Keyframe = Keyframe.ofFloat(0.6f, 1.03f)
		val kf5: Keyframe = Keyframe.ofFloat(0.8f, 0.97f)
		val kf6: Keyframe = Keyframe.ofFloat(1.0f, 1f)

		val pvh1: PropertyValuesHolder = PropertyValuesHolder.ofKeyframe(View.SCALE_X, kf1, kf2, kf3, kf4, kf5, kf6)
		val pvh2: PropertyValuesHolder = PropertyValuesHolder.ofKeyframe(View.SCALE_Y, kf1, kf2, kf3, kf4, kf5, kf6)

		val animator1: Animator = ObjectAnimator.ofPropertyValuesHolder(findViewById<View>(R.id.sign_up_button), pvh1, pvh2)
		animator1.setDuration(1000)
		animator1.setInterpolator(PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f))

		val kf7: Keyframe = Keyframe.ofFloat(0.0f, 0f)
		val kf8: Keyframe = Keyframe.ofFloat(0.6f, 1f)
		val kf9: Keyframe = Keyframe.ofFloat(1.0f, 1f)

		val pvh3: PropertyValuesHolder = PropertyValuesHolder.ofKeyframe(View.ALPHA, kf7, kf8, kf9)

		val animator2: Animator = ObjectAnimator.ofPropertyValuesHolder(findViewById<View>(R.id.sign_up_button), pvh3)
		animator2.setDuration(1000)
		animator2.setInterpolator(PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f))

		val animatorSet: AnimatorSet = AnimatorSet()
		animatorSet.playTogether(animator1, animator2)
		animatorSet.setTarget(findViewById(R.id.sign_up_button))
		animatorSet.start()
	}


	private fun startAnimationGroupThree() {

		startGroup3Animation1()
	}


	private fun startGroup3Animation1() {

		val kf1: Keyframe = Keyframe.ofFloat(0.0f, 0.3f)
		val kf2: Keyframe = Keyframe.ofFloat(0.2f, 1.1f)
		val kf3: Keyframe = Keyframe.ofFloat(0.4f, 0.9f)
		val kf4: Keyframe = Keyframe.ofFloat(0.6f, 1.03f)
		val kf5: Keyframe = Keyframe.ofFloat(0.8f, 0.97f)
		val kf6: Keyframe = Keyframe.ofFloat(1.0f, 1f)

		val pvh1: PropertyValuesHolder = PropertyValuesHolder.ofKeyframe(View.SCALE_X, kf1, kf2, kf3, kf4, kf5, kf6)
		val pvh2: PropertyValuesHolder = PropertyValuesHolder.ofKeyframe(View.SCALE_Y, kf1, kf2, kf3, kf4, kf5, kf6)

		val animator1: Animator = ObjectAnimator.ofPropertyValuesHolder(findViewById<View>(R.id.log_in_button), pvh1, pvh2)
		animator1.setDuration(1000)
		animator1.setInterpolator(PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f))

		val kf7: Keyframe = Keyframe.ofFloat(0.0f, 0f)
		val kf8: Keyframe = Keyframe.ofFloat(0.6f, 1f)
		val kf9: Keyframe = Keyframe.ofFloat(1.0f, 1f)

		val pvh3: PropertyValuesHolder = PropertyValuesHolder.ofKeyframe(View.ALPHA, kf7, kf8, kf9)

		val animator2: Animator = ObjectAnimator.ofPropertyValuesHolder(findViewById<View>(R.id.log_in_button), pvh3)
		animator2.setDuration(1000)
		animator2.setInterpolator(PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f))

		val animatorSet: AnimatorSet = AnimatorSet()
		animatorSet.playTogether(animator1, animator2)
		animatorSet.setTarget(findViewById(R.id.log_in_button))
		animatorSet.start()
	}
}

