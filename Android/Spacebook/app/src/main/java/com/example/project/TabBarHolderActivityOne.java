package com.example.project;
import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.example.project.R;
import android.support.v4.view.ViewPager;
import java.util.List;
import java.util.ArrayList;
import android.support.v4.app.Fragment;
import android.view.MenuItem;
import android.support.design.widget.BottomNavigationView;
import android.support.annotation.NonNull;
/**
 *  Created by Artem.
 */
public class TabBarHolderActivityOne extends AppCompatActivity {


	public static Intent newIntent(Context context) {
		return new Intent(context, TabBarHolderActivityOne.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.tab_bar_holder_activity_one);
		this.init();
	}

	public void init() {
		List<Fragment> fragments = (List<Fragment>) new ArrayList<Fragment>();
		fragments.add(TimelineVC.newInstance());
		fragments.add(ProfileVC.newInstance());
		fragments.add(MessagesVC.newInstance());
		TabBarHolderActivityOnePagerAdapter adapter = new TabBarHolderActivityOnePagerAdapter(getSupportFragmentManager(), fragments);
		ViewPager viewPager = findViewById(R.id.view_pager);
		viewPager.setAdapter(adapter);
		BottomNavigationView tabBar = findViewById(R.id.tab_bar);
		tabBar.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() { 
			@Override
			public boolean onNavigationItemSelected(@NonNull MenuItem item) {
				onTabSelected(item.getItemId());
				return true;
			}
		});
	}

	public void onTabSelected(int menuItemId) {
		ViewPager viewPager = (ViewPager) findViewById(R.id.view_pager);
		switch(menuItemId) {
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
