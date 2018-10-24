/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import io.supernova.spacebook.R;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.graphics.PointF;
import android.support.constraint.ConstraintLayout;
import android.text.Spannable;
import android.view.View;
import android.view.MenuItem;
import android.widget.Switch;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.content.Intent;
import android.text.style.RelativeSizeSpan;
import android.widget.ImageView;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuInflater;
import android.os.Bundle;
import android.content.Context;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.widget.TextView;
import android.graphics.Color;


public class ProfileSettingsActivity extends AppCompatActivity {
    public static Intent newIntent(Context context) {
    
        // Fill the created intent with the data you want to be passed to this Activity when it's opened.
        return new Intent(context, ProfileSettingsActivity.class);
    }
    
    private TextView detailsTextView;
    private TextView informationTextView;
    private Switch slideSwitch;
    private Toolbar toolbar;
    @Override
    public void onCreate(Bundle savedInstanceState) {
    
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.profile_settings_activity);
        this.init();
    }
    private void init() {
    
        // Configure Details component
        detailsTextView = this.findViewById(R.id.details_text_view);
        SpannableString detailsTextViewText = new SpannableString(this.getString(R.string.profile_settings_activity_details_text_view_text));
        detailsTextView.setText(detailsTextViewText);
        
        // Configure Information component
        informationTextView = this.findViewById(R.id.information_text_view);
        SpannableString informationTextViewText = new SpannableString(this.getString(R.string.profile_settings_activity_information_text_view_text));
        informationTextView.setText(informationTextViewText);
        
        // Configure Slide component
        slideSwitch = this.findViewById(R.id.slide_switch);
        slideSwitch.setOnClickListener((view) -> {
    this.onSlideValueChanged();
});
        
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
    public void onSlideValueChanged() {
    
    }
}




