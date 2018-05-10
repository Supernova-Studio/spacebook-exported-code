/*
 * SplashActivity
 * Spacebook
 *
 * Created by [Author].
 * Copyright © 2018 Supernova. All rights reserved.
 */

package com.example.project.activity

import android.support.v7.app.AppCompatActivity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import com.example.project.R


class SplashActivity : AppCompatActivity() {

	override fun onCreate(savedInstanceState: Bundle?) {

		super.onCreate(savedInstanceState)
		this.startActivity(WelcomeVCActivity.newIntent(this))
		finish()
	}
}

