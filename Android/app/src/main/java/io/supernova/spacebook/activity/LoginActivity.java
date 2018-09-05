/*
 * LoginActivity
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
import android.graphics.Color;
import android.widget.TextView;
import android.support.constraint.ConstraintLayout;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;


public class LoginActivity extends AppCompatActivity {

	private ConstraintLayout loginConstraintLayout;
	private TextView logInTextView;
	private View loginButton;
	private View forgotYourPasswordButton;

	public static Intent newIntent(Context context) {

		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, LoginActivity.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.login_activity);
		this.init();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {

		getMenuInflater().inflate(R.menu.menu_login, menu);
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

		Toolbar toolbar = findViewById(R.id.login_activity_toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}

	private void init() {

		loginConstraintLayout = this.findViewById(R.id.login_constraint_layout);
		// Configure Login component
		loginConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f))
				.addStop(0f, Color.argb(255, 247, 132, 97))
				.addStop(1f, Color.argb(255, 139, 27, 139))
				.build());
		
		logInTextView = this.findViewById(R.id.log_in_text_view);
		
		loginButton = this.findViewById(R.id.login_button);
		// Configure Login component
		loginButton.setOnClickListener(view -> {
			onLoginPressed();
		});
		
		forgotYourPasswordButton = this.findViewById(R.id.forgot_your_password_button);
		// Configure Forgot your password component
		forgotYourPasswordButton.setOnClickListener(view -> {
			onForgotYourPasswordPressed();
		});
		
		setupToolbar();
		
		// Additional Activity initialization code can go here.
	}

	private void onForgotYourPasswordPressed() {


	}

	private void onLoginPressed() {

		this.startTabBarHolderActivityOne();
	}

	private void startTabBarHolderActivityOne() {

		this.startActivity(TabBarHolderActivityOne.newIntent(this));
	}
}
