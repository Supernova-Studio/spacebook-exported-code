/**
 * Created by Supernova.
 */

package io.supernova.spacebook.fragment

import android.view.ViewGroup
import io.supernova.spacebook.R
import android.text.SpannableString
import android.text.style.ForegroundColorSpan
import io.supernova.spacebook.activity.*
import java.util.*
import android.support.v7.widget.GridLayoutManager
import android.view.View
import android.view.LayoutInflater
import android.text.Spannable
import android.view.MenuItem
import android.support.v7.widget.Toolbar
import android.view.Menu
import android.text.style.RelativeSizeSpan
import android.databinding.DataBindingUtil
import android.support.v7.app.AppCompatActivity
import android.view.MenuInflater
import android.os.Bundle
import android.support.v4.app.Fragment
import android.support.v7.widget.LinearLayoutManager
import io.supernova.spacebook.adapter.ProfileActivityPhotosRecyclerViewAdapter
import io.supernova.spacebook.databinding.ProfileActivityBinding


class ProfileActivity(): Fragment() {

    companion object {
        fun newInstance(): ProfileActivity {
        
            val fragment = ProfileActivity()
            val arguments = Bundle()
            fragment.arguments = arguments
            return fragment
        }
    }
    
    private lateinit var binding: ProfileActivityBinding
    init {
        setHasOptionsMenu(true)
    }
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
    
        binding = DataBindingUtil.inflate(inflater, R.layout.profile_activity, container, false)
        return binding.root
    }
    override fun onCreateOptionsMenu(menu: Menu, inflater: MenuInflater) {
    
        inflater.inflate(R.menu.profile_activity_menu, menu)
    }
    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
    
        super.onViewCreated(view, savedInstanceState)
        init()
    }
    fun init() {
    
        // Configure Dr. What component
        val drWhatTextViewText = SpannableString(context.getString(R.string.profile_activity_dr_what_text_view_text))
        binding.drWhatTextView.text = drWhatTextViewText
        
        // Configure Traveler, dreamer component
        val travelerDreamerTextViewText = SpannableString(context.getString(R.string.profile_activity_traveler_dreamer_text_view_text))
        binding.travelerDreamerTextView.text = travelerDreamerTextViewText
        
        // Configure Latest Photos component
        val latestPhotosTextViewText = SpannableString(context.getString(R.string.profile_activity_latest_photos_text_view_text))
        binding.latestPhotosTextView.text = latestPhotosTextViewText
        
        // Configure Photos component
        binding.photosRecyclerView.layoutManager = GridLayoutManager(context, 1, LinearLayoutManager.HORIZONTAL, false)
        binding.photosRecyclerView.adapter = ProfileActivityPhotosRecyclerViewAdapter()
    }
}




