/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.fragment;

import io.supernova.spacebook.activity.*;
import java.util.*;
import io.supernova.spacebook.databinding.ProfileActivityBinding;
import io.supernova.uitoolkit.recycler.GridSpacingItemDecoration;
import android.support.v7.widget.GridLayoutManager;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v4.app.Fragment;
import android.support.v7.widget.Toolbar;
import android.databinding.DataBindingUtil;
import android.view.Menu;
import android.view.MenuInflater;
import io.supernova.spacebook.R;
import io.supernova.spacebook.adapter.ProfileActivityPhotosRecyclerViewAdapter;
import android.view.MenuItem;
import android.os.Bundle;
import android.view.View;
import android.support.v7.app.AppCompatActivity;


public class ProfileActivity extends Fragment {
	
	public static ProfileActivity newInstance() {
	
		ProfileActivity fragment = new ProfileActivity();
		Bundle arguments = new Bundle();
		fragment.setArguments(arguments);
		return fragment;
	}
	
	private ProfileActivityBinding binding;
	protected ProfileActivity() {
		super();
		setHasOptionsMenu(true);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
	
		binding = DataBindingUtil.inflate(inflater, R.layout.profile_activity, container, false);
		return binding.getRoot();
	}
	
	@Override
	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
	
		inflater.inflate(R.menu.profile_activity_menu, menu);
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {
	
		switch (menuItem.getItemId()) {
			case R.id.left_item_menu_item: 
				this.onLeftItemPressed();
				return true;
			default:
				return super.onOptionsItemSelected(menuItem);
		}
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
	
		super.onViewCreated(view, savedInstanceState);
		init();
	}
	
	public void onLeftItemPressed() {
	
		this.startProfileSettingsActivity();
	}
	
	public void init() {
	
		// Configure Photos component
		binding.photosRecyclerView.setLayoutManager(new GridLayoutManager(this.getContext(), 1, LinearLayoutManager.HORIZONTAL, false));
		binding.photosRecyclerView.setAdapter(new ProfileActivityPhotosRecyclerViewAdapter());
		binding.photosRecyclerView.addItemDecoration(new GridSpacingItemDecoration(this.getContext().getResources().getDimension(R.dimen.profile_activity_photos_recycler_view_spacing)));
	}
	
	private void startProfileSettingsActivity() {
	
		this.getActivity().startActivity(ProfileSettingsActivity.newIntent(this.getContext()));
	}
}
