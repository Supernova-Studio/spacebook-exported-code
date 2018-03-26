package com.example.project;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.*;
import com.example.project.R;
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
public class ProfileVC extends Fragment {

	private TextView phoneBoothAndroLabel;
	private TextView drWhatLabel;
	private TextView travelerDreamerLabel;
	private TextView stalkingLabel;
	private TextView label;
	private TextView stalkersLabel;
	private TextView kLabel;
	private TextView photosLabel;
	private TextView labelTwo;
	private TextView latestPhotosLabel;
	private RecyclerView collectionView;

	public ProfileVC() {
		setHasOptionsMenu(true);
	}

	public static ProfileVC newInstance() {
		return new ProfileVC();
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		return inflater.inflate(R.layout.profile_vc, container, false);
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
		switch(menuItem.getItemId()) {
			case R.id.item_navigation_bar_item:
				onItemPressed();
				return true;
		}
		return super.onOptionsItemSelected(menuItem);
	}

	private void init() {
		phoneBoothAndroLabel = getView().findViewById(R.id.phone_booth_andro_label);
		drWhatLabel = getView().findViewById(R.id.dr_what_label);
		travelerDreamerLabel = getView().findViewById(R.id.traveler_dreamer_label);
		stalkingLabel = getView().findViewById(R.id.stalking_label);
		label = getView().findViewById(R.id.label);
		stalkersLabel = getView().findViewById(R.id.stalkers_label);
		kLabel = getView().findViewById(R.id.k_label);
		photosLabel = getView().findViewById(R.id.photos_label);
		labelTwo = getView().findViewById(R.id.label_two);
		latestPhotosLabel = getView().findViewById(R.id.latest_photos_label);
		collectionView = getView().findViewById(R.id.collection_view);
		collectionView.setLayoutManager(new GridLayoutManager(getContext(), 1, LinearLayoutManager.HORIZONTAL, false));
		collectionView.setAdapter(new ProfileVCCollectionViewAdapter());
	}

	protected void onItemPressed() {
		this.startProfileSettingsVC();
	}

	private void startProfileSettingsVC() {
		getContext().startActivity(ProfileSettingsVC.newIntent(getContext()));
	}
}