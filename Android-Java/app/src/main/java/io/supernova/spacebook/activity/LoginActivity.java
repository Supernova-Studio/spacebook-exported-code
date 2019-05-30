/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.view.Menu;
import io.supernova.spacebook.databinding.LoginActivityBinding;
import android.support.v7.widget.Toolbar;
import io.supernova.spacebook.R;
import android.content.Context;
import android.graphics.PointF;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.MenuInflater;
import android.databinding.DataBindingUtil;
import android.graphics.Color;
import android.content.Intent;
import android.view.MenuItem;


public class LoginActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, LoginActivity.class);
	}
	
	private LoginActivityBinding binding;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		binding = DataBindingUtil.setContentView(this, R.layout.login_activity);
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
	
		// Configure Login component
		binding.loginConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
		
		// Configure Login component
		binding.loginButton.setOnClickListener((view) -> {
	this.onLoginPressed();
});
		
		// Configure Forgot your password component
		binding.forgotYourPasswordButton.setOnClickListener((view) -> {
	this.onForgotYourPasswordPressed();
});
		
		this.setupToolbar();
	}
	
	public void setupToolbar() {
	
		setSupportActionBar(binding.toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onLoginPressed() {
	
		this.startTwoActivity();
	}
	
	public void onForgotYourPasswordPressed() {
	
	}
	
	public void onGroupPressed() {
	
		this.finish();
	}
	
	private void startTwoActivity() {
	
		this.startActivity(TwoActivity.newIntent(this));
	}
}
