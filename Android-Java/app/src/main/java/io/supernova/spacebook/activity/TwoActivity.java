/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import io.supernova.spacebook.R;
import android.graphics.Color;
import android.graphics.PointF;
import java.util.List;
import android.support.v4.view.ViewPager;
import io.supernova.spacebook.fragment.MessagesActivity;
import io.supernova.spacebook.fragment.ProfileActivity;
import io.supernova.spacebook.fragment.TimelineActivity;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import android.content.Intent;
import io.supernova.spacebook.adapter.TwoActivityPagerAdapter;
import java.util.Arrays;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.content.Context;
import android.support.v4.app.Fragment;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.support.design.widget.BottomNavigationView;


public class TwoActivity extends AppCompatActivity {
    public static Intent newIntent(Context context) {
    
        // Fill the created intent with the data you want to be passed to this Activity when it's opened.
        return new Intent(context, TwoActivity.class);
    }
    
    private BottomNavigationView bottomNavigationBar;
    private Toolbar toolbar;
    private ViewPager viewPager;
    @Override
    public void onCreate(Bundle savedInstanceState) {
    
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.two_activity);
        init();
    }
    public void init() {
    
        // Configure Tab Bar #1 component
        bottomNavigationBar = this.findViewById(R.id.bottom_navigation_bar);
        
        // Configure Navigation Bar #2 component
        toolbar = this.findViewById(R.id.toolbar);
        toolbar.setBackground(new LinearGradientDrawable.Builder(this, new PointF(-0.01f, 0.51f), new PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
        
        // Configure View Pager
        viewPager = findViewById(R.id.view_pager);
        
        // Configure View Pager Adapter
        List<Fragment> fragments = Arrays.asList(TimelineActivity.newInstance(), MessagesActivity.newInstance(), ProfileActivity.newInstance());
        viewPager.setAdapter(new TwoActivityPagerAdapter(getSupportFragmentManager(), fragments));
        bottomNavigationBar.setOnNavigationItemSelectedListener((menuItem) -> {
    onTabSelected(menuItem);
    return true;
});
        
        setupToolbar();
    }
    private void setupToolbar() {
    
        setSupportActionBar(toolbar);
        
        // Additional Toolbar setup code can go here.
    }
    public void onTabSelected(MenuItem menuItem) {
    
        switch (menuItem.getItemId()) {
            case R.id.timeline_activity_menu_item: 
                viewPager.setCurrentItem(0, true);
                break;
            case R.id.messages_activity_menu_item: 
                viewPager.setCurrentItem(1, true);
                break;
            case R.id.profile_activity_menu_item: 
                viewPager.setCurrentItem(2, true);
                break;
        }
    }
}




