package com.example.project;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.*;

/**
 *  Created by [Author].
 */
public class TabBarHolderActivityOnePagerAdapter extends FragmentPagerAdapter {

	private List<Fragment> fragments;

	public TabBarHolderActivityOnePagerAdapter(FragmentManager fragmentManager, List<Fragment> fragments) {
		super(fragmentManager);

		this.fragments = fragments;
	}

	@Override
	public Fragment getItem(int position) {
		return fragments.get(position);
	}

	@Override
	public int getCount() {
		return fragments.size();
	}
}