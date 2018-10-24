/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.*;


public class TwoActivityPagerAdapter extends FragmentPagerAdapter {
    public final List<Fragment> fragments;
    
    public TwoActivityPagerAdapter(FragmentManager fragmentManager, List<Fragment> fragments) {
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




