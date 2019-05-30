/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import android.os.Bundle;
import io.supernova.spacebook.adapter.ProfilePhotosActivityGalleryRecyclerViewAdapter;
import io.supernova.spacebook.databinding.ProfilePhotosActivityBinding;
import android.view.MenuInflater;
import android.view.View;
import android.content.Intent;
import io.supernova.spacebook.R;
import android.view.Menu;
import android.graphics.Color;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.app.AppCompatActivity;
import android.databinding.DataBindingUtil;
import android.content.Context;
import android.graphics.PointF;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import io.supernova.uitoolkit.recycler.GridSpacingItemDecoration;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;


public class ProfilePhotosActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, ProfilePhotosActivity.class);
	}
	
	private ProfilePhotosActivityBinding binding;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		binding = DataBindingUtil.setContentView(this, R.layout.profile_photos_activity);
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
		
		// Configure Gallery component
		binding.galleryRecyclerView.setLayoutManager(new GridLayoutManager(this, 1, LinearLayoutManager.VERTICAL, false));
		binding.galleryRecyclerView.setAdapter(new ProfilePhotosActivityGalleryRecyclerViewAdapter());
		binding.galleryRecyclerView.addItemDecoration(new GridSpacingItemDecoration(this.getResources().getDimension(R.dimen.profile_photos_activity_gallery_recycler_view_spacing)));
		
		this.setupToolbar();
	}
	
	public void setupToolbar() {
	
		setSupportActionBar(binding.toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onGroupPressed() {
	
		this.finish();
	}
}
