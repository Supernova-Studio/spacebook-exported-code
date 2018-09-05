/*
 * TabBarHolderActivityOnePagerAdapter
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.*;


public class TabBarHolderActivityOnePagerAdapter extends FragmentPagerAdapter {

	private List<Fragment> fragments;

	public TabBarHolderActivityOnePagerAdapter(FragmentManager fragmentManager, List<Fragment> fragments) {
		super(fragmentManager);

		this.fragments = fragments;
	}

	@Override
	public Fragment getItem(int position) {

		// Defines number of items in the ViewPager.
		return fragments.get(position);
	}

	@Override
	public int getCount() {

		return fragments.size();
	}
}
