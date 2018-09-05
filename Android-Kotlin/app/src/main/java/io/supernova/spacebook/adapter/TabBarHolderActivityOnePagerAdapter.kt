/*
 * TabBarHolderActivityOnePagerAdapter
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.adapter

import android.support.v4.app.Fragment
import android.support.v4.app.FragmentManager
import android.support.v4.app.FragmentPagerAdapter
import java.util.*


class TabBarHolderActivityOnePagerAdapter(fragmentManager: FragmentManager, fragments: List<Fragment>) : FragmentPagerAdapter(fragmentManager) {

	var fragments: List<Fragment>

	init {
		this.fragments = fragments
	}

	override fun getItem(position: Int): Fragment {

		// Defines number of items in the ViewPager.
		return fragments.get(position)
	}


	override fun getCount(): Int {

		return fragments.size
	}
}

