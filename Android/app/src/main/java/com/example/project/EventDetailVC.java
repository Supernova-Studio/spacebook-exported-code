package com.example.project;

import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.example.project.R;
import java.util.*;
import com.google.android.gms.maps.MapView;
import android.widget.TextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;

/**
 *  Created by [Author].
 */
public class EventDetailVC extends AppCompatActivity {

	private MapView mapView;
	private TextView guessWhoSBackLabel;
	private TextView happeningIn20hBaLabel;
	private TextView eventPostedByLaikLabel;
	private TextView comingLabel;

	public static Intent newIntent(Context context) {
		return new Intent(context, EventDetailVC.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.event_detail_vc);
		this.init();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.menu_event_detail, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {
		switch(menuItem.getItemId()) {
			case R.id.item_navigation_bar_item_two:
				onItemTwoPressed();
				return true;
			case android.R.id.home:
				finish();
				return true;
		}
		return super.onOptionsItemSelected(menuItem);
	}

	private void setupToolbar() {
		Toolbar toolbar = findViewById(R.id.activity_event_detail_vc_toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
	}

	private void init() {
		mapView = this.findViewById(R.id.map_view);
		guessWhoSBackLabel = this.findViewById(R.id.guess_who_sback_label);
		happeningIn20hBaLabel = this.findViewById(R.id.happening_in20h_ba_label);
		eventPostedByLaikLabel = this.findViewById(R.id.event_posted_by_laik_label);
		comingLabel = this.findViewById(R.id.coming_label);
		setupToolbar();
	}

	private void onItemTwoPressed() {

	}
}