/*
 * ProfileSettingsActivity
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.activity;

import android.graphics.Color;
import android.graphics.PointF;
import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import io.supernova.spacebook.R;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;

import java.util.*;
import android.widget.Switch;
import android.widget.TextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;


public class ProfileSettingsActivity extends AppCompatActivity {

	private TextView detailsTextView;
	private TextView informationTextView;
	private Switch slideSwitch;

	public static Intent newIntent(Context context) {

		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, ProfileSettingsActivity.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.profile_settings_activity);
		this.init();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {

		getMenuInflater().inflate(R.menu.menu_profile_settings, menu);
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

		Toolbar toolbar = findViewById(R.id.profile_settings_activity_toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);

		toolbar.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0f, 0.5f), new PointF(1f, 0.5f))
				.addStop(0, Color.rgb(247, 133, 97))
				.addStop(1, Color.rgb(140, 25, 140))
				.build());
		
		// Additional Toolbar setup code can go here.
	}

	private void init() {

		detailsTextView = this.findViewById(R.id.details_text_view);
		
		informationTextView = this.findViewById(R.id.information_text_view);
		
		slideSwitch = this.findViewById(R.id.slide_switch);
		// Configure Slide component
		slideSwitch.setOnClickListener(view -> {
			onSlideValueChanged();
		});
		
		setupToolbar();
		
		// Additional Activity initialization code can go here.
	}

	private void onSlideValueChanged() {


	}
}
