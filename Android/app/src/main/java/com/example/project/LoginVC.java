package com.example.project;

import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.example.project.R;
import java.util.*;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.support.constraint.ConstraintLayout;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;

/**
 *  Created by [Author].
 */
public class LoginVC extends AppCompatActivity {

	private ConstraintLayout login;
	private TextView logInLabel;
	private TextView welcomeBackLabel;
	private ConstraintLayout loginFields;
	private EditText yourNicknameTF;
	private EditText yourPasswordTF;
	private View loginTwo;
	private View forgotYourPasswordButton;

	public static Intent newIntent(Context context) {
		return new Intent(context, LoginVC.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.login_vc);
		this.init();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.menu_login, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {
		switch(menuItem.getItemId()) {
			case android.R.id.home:
				finish();
				return true;
		}
		return super.onOptionsItemSelected(menuItem);
	}

	private void setupToolbar() {
		Toolbar toolbar = findViewById(R.id.activity_login_vc_toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
	}

	private void init() {
		login = this.findViewById(R.id.login);
		logInLabel = this.findViewById(R.id.log_in_label);
		welcomeBackLabel = this.findViewById(R.id.welcome_back_label);
		loginFields = this.findViewById(R.id.login_fields);
		yourNicknameTF = this.findViewById(R.id.your_nickname_tf);
		yourPasswordTF = this.findViewById(R.id.your_password_tf);
		loginTwo = this.findViewById(R.id.login_two);
		forgotYourPasswordButton = this.findViewById(R.id.forgot_your_password_button);
		loginTwo.setOnClickListener(view -> {
			onLoginPressed();
		});
		forgotYourPasswordButton.setOnClickListener(view -> {
			onForgotYourPasswordPressed();
		});
		setupToolbar();
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