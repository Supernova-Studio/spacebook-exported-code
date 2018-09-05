/*
 * TabBarHolderActivityOne
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.activity;

import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import io.supernova.spacebook.R;
import java.util.*;
import android.support.v4.view.ViewPager;
import android.support.v4.app.Fragment;
import android.support.design.widget.BottomNavigationView;
import android.support.annotation.NonNull;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import io.supernova.spacebook.fragment.TimelineActivity;
import io.supernova.spacebook.fragment.ProfileActivity;
import io.supernova.spacebook.fragment.MessagesActivity;
import io.supernova.spacebook.adapter.TabBarHolderActivityOnePagerAdapter;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;


public class TabBarHolderActivityOne extends AppCompatActivity {

	public static Intent newIntent(Context context) {

		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, TabBarHolderActivityOne.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.tab_bar_holder_activity_one);
		this.init();
	}

	private void init() {

		List<Fragment> fragments = Arrays.asList(TimelineActivity.newInstance(), ProfileActivity.newInstance(), MessagesActivity.newInstance());
		TabBarHolderActivityOnePagerAdapter adapter = new TabBarHolderActivityOnePagerAdapter(getSupportFragmentManager(), fragments);
		ViewPager viewPager = findViewById(R.id.view_pager);
		viewPager.setAdapter(adapter);
		BottomNavigationView tabBar = findViewById(R.id.tab_bar);
		tabBar.setOnNavigationItemSelectedListener(item -> {
			onTabSelected(item.getItemId());
			return true;
		});
		setupToolbar();
		
		// Additional Activity initialization code can go here.
	}

	private void setupToolbar() {

		Toolbar toolbar = findViewById(R.id.tab_bar_holder_activity_one_toolbar);
		setSupportActionBar(toolbar);

		toolbar.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0f, 0.5f), new PointF(1f, 0.5f))
				.addStop(0, Color.rgb(247, 133, 97))
				.addStop(1, Color.rgb(140, 25, 140))
				.build());
		
		// Additional Toolbar setup code can go here.
	}

	private void onTabSelected(int menuItemId) {

		ViewPager viewPager = findViewById(R.id.view_pager);
		switch (menuItemId) {
			case R.id.tab_bar_item_1:

				viewPager.setCurrentItem(0, true);
				break;
			case R.id.tab_bar_item_2:

				viewPager.setCurrentItem(1, true);
				break;
			case R.id.tab_bar_item_3:

				viewPager.setCurrentItem(2, true);
				break;
		}
	}
}
