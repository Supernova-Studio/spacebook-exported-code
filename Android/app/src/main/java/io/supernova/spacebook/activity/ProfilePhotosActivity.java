/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import io.supernova.spacebook.R;
import android.support.v7.widget.GridLayoutManager;
import android.graphics.PointF;
import android.support.constraint.ConstraintLayout;
import android.view.View;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.content.Intent;
import io.supernova.spacebook.adapter.ProfilePhotosActivityGalleryRecyclerViewAdapter;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.LinearLayoutManager;
import android.view.MenuInflater;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.graphics.Color;


public class ProfilePhotosActivity extends AppCompatActivity {
    public static Intent newIntent(Context context) {
    
        // Fill the created intent with the data you want to be passed to this Activity when it's opened.
        return new Intent(context, ProfilePhotosActivity.class);
    }
    
    private RecyclerView galleryRecyclerView;
    private Toolbar toolbar;
    @Override
    public void onCreate(Bundle savedInstanceState) {
    
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.profile_photos_activity);
        this.init();
    }
    private void init() {
    
        // Configure Gallery component
        galleryRecyclerView = this.findViewById(R.id.gallery_recycler_view);
        galleryRecyclerView.setLayoutManager(new GridLayoutManager(this, 1, LinearLayoutManager.VERTICAL, false));
        galleryRecyclerView.setAdapter(new ProfilePhotosActivityGalleryRecyclerViewAdapter());
        
        // Configure Navigation Bar #2 component
        toolbar = this.findViewById(R.id.toolbar);
        toolbar.setBackground(new LinearGradientDrawable.Builder(this, new PointF(-0.01f, 0.51f), new PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
        
        setupToolbar();
    }
    public void setupToolbar() {
    
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        
        // Additional Toolbar setup code can go here.
    }
}




