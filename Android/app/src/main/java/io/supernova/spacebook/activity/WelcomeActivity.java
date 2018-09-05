/*
 * WelcomeActivity
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.activity;

import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import io.supernova.spacebook.R;
import java.util.*;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.widget.Button;
import android.graphics.PointF;
import android.support.constraint.ConstraintLayout;
import android.graphics.Color;
import android.widget.TextView;
import android.widget.ImageView;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.support.v4.view.animation.PathInterpolatorCompat;


public class WelcomeActivity extends AppCompatActivity {

	private ConstraintLayout welcomeConstraintLayout;
	private TextView spacebookTextView;
	private ImageView logoImageView;
	private View logInButton;
	private View signUpButton;

	public static Intent newIntent(Context context) {

		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, WelcomeActivity.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.welcome_activity);
		this.init();
		
		// Trigger all animations with 'On load' trigger action
		startAnimationGroupOne();
	}

	private void init() {

		welcomeConstraintLayout = this.findViewById(R.id.welcome_constraint_layout);
		// Configure Welcome component
		welcomeConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f))
				.addStop(0f, Color.argb(255, 247, 132, 97))
				.addStop(1f, Color.argb(255, 139, 27, 139))
				.build());
		
		spacebookTextView = this.findViewById(R.id.spacebook_text_view);
		
		logoImageView = this.findViewById(R.id.logo_image_view);
		
		logInButton = this.findViewById(R.id.log_in_button);
		// Configure Log In component
		logInButton.setOnClickListener(view -> {
			onLogInPressed();
		});
		
		signUpButton = this.findViewById(R.id.sign_up_button);
		// Configure Sign Up component
		signUpButton.setOnClickListener(view -> {
			onSignUpPressed();
		});
		
		// Additional Activity initialization code can go here.
	}

	private void onLogInPressed() {

		this.startLoginActivity();
	}

	private void onSignUpPressed() {

		this.startSignupActivity();
	}

	private void startLoginActivity() {

		this.startActivity(LoginActivity.newIntent(this));
	}

	private void startSignupActivity() {

		this.startActivity(SignupActivity.newIntent(this));
	}

	private void startAnimationGroupOne() {

		startGroup1Animation1();
	}

	private void startGroup1Animation1() {

		Keyframe kf1 = Keyframe.ofFloat(0.0f, -45f);
		Keyframe kf2 = Keyframe.ofFloat(0.7f, -45f);
		Keyframe kf3 = Keyframe.ofFloat(1.0f, 1f);

		PropertyValuesHolder pvh1 = PropertyValuesHolder.ofKeyframe(View.ROTATION, kf1, kf2, kf3);

		Animator animator1 = ObjectAnimator.ofPropertyValuesHolder(logoImageView, pvh1);
		animator1.setDuration(1000);
		animator1.setInterpolator(PathInterpolatorCompat.create(0.42f, 0.0f, 0.58f, 1.0f));

		Animator animator2 = AnimatorInflater.loadAnimator(this, R.animator.animation_group_one_animation_element_one);
		AnimatorSet animatorSet = new AnimatorSet();
		animatorSet.playTogether(animator1, animator2);
		animatorSet.setTarget(logoImageView);
		animatorSet.start();
	}
}
