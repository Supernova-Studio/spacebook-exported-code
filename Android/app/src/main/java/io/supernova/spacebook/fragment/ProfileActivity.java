/*
 * ProfileActivity
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.fragment;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.*;
import io.supernova.spacebook.R;
import io.supernova.spacebook.activity.*;
import android.support.v7.widget.GridLayoutManager;
import io.supernova.spacebook.adapter.ProfileActivityPhotosRecyclerViewAdapter;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import android.support.v7.widget.LinearLayoutManager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;


public class ProfileActivity extends Fragment {

	private TextView drWhatTextView;
	private TextView travelerDreamerTextView;
	private TextView latestPhotosTextView;
	private RecyclerView photosRecyclerView;

	public ProfileActivity() {
		setHasOptionsMenu(true);
	}

	public static ProfileActivity newInstance() {

		// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.
		return new ProfileActivity();
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

		return inflater.inflate(R.layout.profile_activity, container, false);
	}

	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {

		super.onViewCreated(view, savedInstanceState);
		init();
	}

	@Override
	public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {

		super.onCreateOptionsMenu(menu, menuInflater);
		menuInflater.inflate(R.menu.menu_profile, menu);
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {

		switch (menuItem.getItemId()) {
			case R.id.left_item_menu_item:

				onLeftItemPressed();
				return true;
		}
		return super.onOptionsItemSelected(menuItem);
	}

	private void init() {

		drWhatTextView = getView().findViewById(R.id.dr_what_text_view);
		
		travelerDreamerTextView = getView().findViewById(R.id.traveler_dreamer_text_view);
		
		latestPhotosTextView = getView().findViewById(R.id.latest_photos_text_view);
		
		photosRecyclerView = getView().findViewById(R.id.photos_recycler_view);
		// Configure Photos component
		photosRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 1, LinearLayoutManager.HORIZONTAL, false));
		photosRecyclerView.setAdapter(new ProfileActivityPhotosRecyclerViewAdapter());
		
		// Additional Fragment initialization code can go here.
	}

	protected void onLeftItemPressed() {

		this.startProfileSettingsActivity();
	}

	private void startProfileSettingsActivity() {

		getContext().startActivity(ProfileSettingsActivity.newIntent(getContext()));
	}
}
