/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import io.supernova.spacebook.R;
import android.graphics.PointF;
import com.google.android.gms.maps.MapView;
import android.support.constraint.ConstraintLayout;
import android.view.View;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.content.Intent;
import android.widget.ImageView;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuInflater;
import android.os.Bundle;
import android.content.Context;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.widget.TextView;
import android.graphics.Color;


public class EventDetailActivity extends AppCompatActivity {
    public static Intent newIntent(Context context) {
    
        // Fill the created intent with the data you want to be passed to this Activity when it's opened.
        return new Intent(context, EventDetailActivity.class);
    }
    
    private Toolbar toolbar;
    @Override
    public void onCreate(Bundle savedInstanceState) {
    
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.event_detail_activity);
        this.init();
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
    
        getMenuInflater().inflate(R.menu.event_detail_activity_menu, menu);
        return true;
    }
    private void init() {
    
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




