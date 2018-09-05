/*
 * ProfilePhotosActivity
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
import android.support.v7.widget.GridLayoutManager;
import io.supernova.spacebook.adapter.ProfilePhotosActivityGalleryRecyclerViewAdapter;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import android.support.v7.widget.LinearLayoutManager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;


public class ProfilePhotosActivity extends AppCompatActivity {

	private RecyclerView galleryRecyclerView;
	private TextView profileTextView;
	private TextView messagesTextView;
	private TextView newsTextView;

	public static Intent newIntent(Context context) {

		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, ProfilePhotosActivity.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.profile_photos_activity);
		this.init();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {

		getMenuInflater().inflate(R.menu.menu_profile_photos, menu);
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

		Toolbar toolbar = findViewById(R.id.profile_photos_activity_toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}

	private void init() {

		galleryRecyclerView = this.findViewById(R.id.gallery_recycler_view);
		// Configure Gallery component
		galleryRecyclerView.setLayoutManager(new GridLayoutManager(this, 1, LinearLayoutManager.VERTICAL, false));
		galleryRecyclerView.setAdapter(new ProfilePhotosActivityGalleryRecyclerViewAdapter());
		
		profileTextView = this.findViewById(R.id.profile_text_view);
		
		messagesTextView = this.findViewById(R.id.messages_text_view);
		
		newsTextView = this.findViewById(R.id.news_text_view);
		
		setupToolbar();
		
		// Additional Activity initialization code can go here.
	}
}
