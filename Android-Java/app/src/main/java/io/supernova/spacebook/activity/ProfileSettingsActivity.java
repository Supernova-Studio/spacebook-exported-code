/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import android.content.Intent;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import io.supernova.spacebook.databinding.ProfileSettingsActivityBinding;
import io.supernova.spacebook.R;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.content.Context;
import android.view.MenuInflater;
import android.graphics.Color;
import android.graphics.PointF;
import android.view.Menu;
import android.view.MenuItem;
import android.databinding.DataBindingUtil;
import android.support.v7.widget.Toolbar;


public class ProfileSettingsActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, ProfileSettingsActivity.class);
	}
	
	private ProfileSettingsActivityBinding binding;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		binding = DataBindingUtil.setContentView(this, R.layout.profile_settings_activity);
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
	
		// Configure Navigation Bar #2 component
		binding.toolbar.setBackground(new LinearGradientDrawable.Builder(this, new PointF(-0.01f, 0.51f), new PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
		
		// Configure Slide component
		binding.slideSwitch.setOnClickListener((view) -> {
	this.onSlideValueChanged();
});
		
		this.setupToolbar();
	}
	
	public void setupToolbar() {
	
		setSupportActionBar(binding.toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onSlideValueChanged() {
	
	}
	
	public void onGroupPressed() {
	
		this.finish();
	}
}
