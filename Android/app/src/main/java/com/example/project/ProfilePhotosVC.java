package com.example.project;

import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.example.project.R;
import java.util.*;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import android.support.v7.widget.LinearLayoutManager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;

/**
 *  Created by [Author].
 */
public class ProfilePhotosVC extends AppCompatActivity {

	private RecyclerView collectionView;

	public static Intent newIntent(Context context) {
		return new Intent(context, ProfilePhotosVC.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.profile_photos_vc);
		this.init();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.menu_profile_photos, menu);
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
		Toolbar toolbar = findViewById(R.id.activity_profile_photos_vc_toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
	}

	private void init() {
		collectionView = this.findViewById(R.id.collection_view);
		collectionView.setLayoutManager(new GridLayoutManager(this, 1, LinearLayoutManager.VERTICAL, false));
		collectionView.setAdapter(new ProfilePhotosVCCollectionViewAdapter());
		setupToolbar();
	}
}