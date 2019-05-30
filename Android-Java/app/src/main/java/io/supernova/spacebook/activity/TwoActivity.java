/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import io.supernova.spacebook.databinding.TwoActivityBinding;
import java.util.List;
import io.supernova.spacebook.adapter.TwoActivityPagerAdapter;
import android.graphics.Color;
import android.view.MenuItem;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.content.Context;
import java.util.Arrays;
import io.supernova.spacebook.fragment.TimelineActivity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.content.Intent;
import io.supernova.spacebook.fragment.MessagesActivity;
import android.support.v4.app.Fragment;
import android.databinding.DataBindingUtil;
import io.supernova.spacebook.fragment.ProfileActivity;
import android.graphics.PointF;
import io.supernova.spacebook.R;


public class TwoActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, TwoActivity.class);
	}
	
	private TwoActivityBinding binding;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		binding = DataBindingUtil.setContentView(this, R.layout.two_activity);
		init();
	}
	
	public void init() {
	
		
		// Configure Navigation Bar #2 component
		binding.toolbar.setBackground(new LinearGradientDrawable.Builder(this, new PointF(-0.01f, 0.51f), new PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
		// Configure View Pager Adapter
		List<Fragment> fragments = Arrays.asList(TimelineActivity.newInstance(), MessagesActivity.newInstance(), ProfileActivity.newInstance());
		binding.viewPager.setAdapter(new TwoActivityPagerAdapter(getSupportFragmentManager(), fragments));
		binding.bottomNavigationBar.setOnNavigationItemSelectedListener((menuItem) -> {
	onTabSelected(menuItem);
	return true;
});
		
		setupToolbar();
	}
	
	private void setupToolbar() {
	
		setSupportActionBar(binding.toolbar);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onTabSelected(MenuItem menuItem) {
	
		switch (menuItem.getItemId()) {
			case R.id.timeline_activity_menu_item: 
				binding.viewPager.setCurrentItem(0, true);
				break;
			case R.id.messages_activity_menu_item: 
				binding.viewPager.setCurrentItem(1, true);
				break;
			case R.id.profile_activity_menu_item: 
				binding.viewPager.setCurrentItem(2, true);
				break;
		}
	}
}
