/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import android.animation.Animator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.support.v7.app.AppCompatActivity;
import android.animation.AnimatorSet;
import io.supernova.spacebook.R;
import android.graphics.PointF;
import android.support.v4.view.animation.PathInterpolatorCompat;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.databinding.DataBindingUtil;
import android.content.Intent;
import android.animation.Keyframe;
import android.graphics.Color;
import android.os.Bundle;
import android.content.Context;
import io.supernova.spacebook.databinding.WelcomeActivityBinding;


public class WelcomeActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, WelcomeActivity.class);
	}
	
	private WelcomeActivityBinding binding;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		binding = DataBindingUtil.setContentView(this, R.layout.welcome_activity);
		this.init();
		
		this.startAnimationOne();
	}
	
	private void init() {
	
		// Configure Welcome component
		binding.welcomeConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
		
		// Configure Sign Up component
		binding.signUpButton.setOnClickListener((view) -> {
	this.onSignUpPressed();
});
		
		// Configure Log In component
		binding.logInButton.setOnClickListener((view) -> {
	this.onLogInPressed();
});
	}
	
	public void onSignUpPressed() {
	
		this.startSignupActivity();
	}
	
	public void onLogInPressed() {
	
		this.startLoginActivity();
	}
	
	private void startLoginActivity() {
	
		this.startActivity(LoginActivity.newIntent(this));
	}
	
	private void startSignupActivity() {
	
		this.startActivity(SignupActivity.newIntent(this));
	}
	
	public void startAnimationOne() {
	
		Keyframe kf1 = Keyframe.ofFloat(0.0f, -45f);
		Keyframe kf2 = Keyframe.ofFloat(0.7f, -45f);
		Keyframe kf3 = Keyframe.ofFloat(1.0f, 0f);
		
		PropertyValuesHolder pvh1 = PropertyValuesHolder.ofKeyframe(View.ROTATION, kf1, kf2, kf3);
		
		Animator animator1 = ObjectAnimator.ofPropertyValuesHolder(binding.logoImageView, pvh1);
		animator1.setDuration(1000);
		animator1.setInterpolator(PathInterpolatorCompat.create(0.42f, 0f, 0.58f, 1f));
		
		Animator animator2 = AnimatorInflater.loadAnimator(this, R.animator.welcomeactivity_animation_group_one_element_one);
		AnimatorSet set1 = new AnimatorSet();
		set1.playTogether(animator1, animator2);
		set1.setTarget(binding.logoImageView);
		AnimatorSet set2 = new AnimatorSet();
		set2.playTogether(set1);
		set2.start();
	}
}
