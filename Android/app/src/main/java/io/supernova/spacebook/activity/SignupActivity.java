/*
 * SignupActivity
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
import android.widget.Switch;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;


public class SignupActivity extends AppCompatActivity {

	private ConstraintLayout signupConstraintLayout;
	private TextView signUpTextView;
	private View signUpButton;
	private View logInButton;
	private Switch switchSwitch;

	public static Intent newIntent(Context context) {

		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, SignupActivity.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.signup_activity);
		this.init();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {

		getMenuInflater().inflate(R.menu.menu_signup, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {

		switch (menuItem.getItemId()) {
			case android.R.id.home:

				finish();
				return true;
		}
		return super.onOptionsItemSelected(menuItem);
	}

	private void setupToolbar() {

		Toolbar toolbar = findViewById(R.id.signup_activity_toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}

	private void init() {

		signupConstraintLayout = this.findViewById(R.id.signup_constraint_layout);
		// Configure Signup component
		signupConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f))
				.addStop(0f, Color.argb(255, 247, 132, 97))
				.addStop(1f, Color.argb(255, 139, 27, 139))
				.build());
		
		signUpTextView = this.findViewById(R.id.sign_up_text_view);
		
		signUpButton = this.findViewById(R.id.sign_up_button);
		// Configure Sign Up component
		signUpButton.setOnClickListener(view -> {
			onSignUpPressed();
		});
		
		logInButton = this.findViewById(R.id.log_in_button);
		// Configure Log In! component
		logInButton.setOnClickListener(view -> {
			onLogInPressed();
		});
		
		switchSwitch = this.findViewById(R.id.switch_switch);
		// Configure switch component
		switchSwitch.setOnClickListener(view -> {
			onSwitchValueChanged();
		});
		
		setupToolbar();
		
		// Additional Activity initialization code can go here.
	}

	private void onLogInPressed() {

		this.startLoginActivity();
	}

	private void onSwitchValueChanged() {


	}

	private void onSignUpPressed() {

		this.startTabBarHolderActivityOne();
	}

	private void startTabBarHolderActivityOne() {

		this.startActivity(TabBarHolderActivityOne.newIntent(this));
	}

	private void startLoginActivity() {

		this.startActivity(LoginActivity.newIntent(this));
	}
}
