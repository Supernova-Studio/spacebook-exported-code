package com.example.project;
import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.example.project.R;
import android.widget.Switch;
import android.widget.TextView;
import android.view.Menu;
import android.support.v7.widget.Toolbar;
/**
 *  Created by [Author].
 */
public class ProfileSettingsVC extends AppCompatActivity {

	private TextView textLabel;
	private TextView label;
	private TextView textLabelTwo;
	private TextView labelTwo;
	private TextView textLabelThree;
	private TextView labelThree;
	private TextView labelFour;
	private TextView textLabelFour;
	private TextView labelFive;
	private TextView detailsLabel;
	private TextView informationLabel;
	private TextView labelSix;
	public static Intent newIntent(Context context) {
		return new Intent(context, ProfileSettingsVC.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.profile_settings_vc);
		this.init();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.menu_profile_settings, menu);
		return true;
	}

	public void setupToolbar() {
		Toolbar toolbar = findViewById(R.id.activity_profile_settings_vc_toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
	}

	public void init() {
		textLabel = this.findViewById(R.id.text_label);
		label = this.findViewById(R.id.label);
		textLabelTwo = this.findViewById(R.id.text_label_two);
		labelTwo = this.findViewById(R.id.label_two);
		textLabelThree = this.findViewById(R.id.text_label_three);
		labelThree = this.findViewById(R.id.label_three);
		labelFour = this.findViewById(R.id.label_four);
		textLabelFour = this.findViewById(R.id.text_label_four);
		labelFive = this.findViewById(R.id.label_five);
		detailsLabel = this.findViewById(R.id.details_label);
		informationLabel = this.findViewById(R.id.information_label);
		labelSix = this.findViewById(R.id.label_six);
		this.findViewById(R.id.slide_switch).setOnClickListener(view -> {
			onSlideValueChanged();
		});
		setupToolbar();
	}

	public void onSlideValueChanged() {

	}


}
