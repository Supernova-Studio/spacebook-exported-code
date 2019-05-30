/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import android.support.v7.widget.Toolbar;
import android.view.View;
import io.supernova.spacebook.R;
import android.graphics.Color;
import android.view.MenuItem;
import io.supernova.spacebook.databinding.SignupActivityBinding;
import android.databinding.DataBindingUtil;
import android.content.Context;
import android.view.Menu;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuInflater;
import android.graphics.PointF;
import android.os.Bundle;
import android.content.Intent;


public class SignupActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, SignupActivity.class);
	}
	
	private SignupActivityBinding binding;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		binding = DataBindingUtil.setContentView(this, R.layout.signup_activity);
		this.init();
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {
	
		switch (menuItem.getItemId()) {
			case android.R.id.home: 
				this.onGroupPressed();
				return true;
			default:
				return super.onOptionsItemSelected(menuItem);
		}
	}
	
	private void init() {
	
		// Configure Signup component
		binding.signupConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
		
		// Configure switch component
		binding.switchSwitch.setOnClickListener((view) -> {
	this.onSwitchValueChanged();
});
		
		// Configure Sign Up component
		binding.signUpButton.setOnClickListener((view) -> {
	this.onSignUpPressed();
});
		
		// Configure Log In! component
		binding.logInButton.setOnClickListener((view) -> {
	this.onLogInPressed();
});
		
		this.setupToolbar();
	}
	
	public void setupToolbar() {
	
		setSupportActionBar(binding.toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onSwitchValueChanged() {
	
	}
	
	public void onSignUpPressed() {
	
		this.startTwoActivity();
	}
	
	public void onLogInPressed() {
	
		this.startLoginActivity();
	}
	
	public void onGroupPressed() {
	
		this.finish();
	}
	
	private void startTwoActivity() {
	
		this.startActivity(TwoActivity.newIntent(this));
	}
	
	private void startLoginActivity() {
	
		this.startActivity(LoginActivity.newIntent(this));
	}
}
