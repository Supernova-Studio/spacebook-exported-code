package com.example.project;
import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.example.project.R;
public class SplashActivity extends AppCompatActivity {


	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.startActivity(WelcomeVC.newIntent(this));
		finish();
	}


}
