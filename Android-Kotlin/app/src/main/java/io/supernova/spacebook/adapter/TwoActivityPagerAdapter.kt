/**
 * Created by Supernova.
 */

package io.supernova.spacebook.adapter

import android.support.v4.app.Fragment
import android.support.v4.app.FragmentManager
import android.support.v4.app.FragmentPagerAdapter
import java.util.*


class TwoActivityPagerAdapter(fragmentManager: FragmentManager, fragments: List<Fragment>): FragmentPagerAdapter(fragmentManager) {

    val fragments: List<Fragment>
    
    init {
        this.fragments = fragments
    }
    override fun getItem(position: Int): Fragment {
    
        return fragments.get(position)
    }
    override fun getCount(): Int {
    
        return fragments.size
    }
}




