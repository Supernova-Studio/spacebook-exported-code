/**
 * Created by Supernova.
 */

package io.supernova.spacebook.fragment

import io.supernova.spacebook.adapter.ProfileActivityPhotosRecyclerViewAdapter
import io.supernova.spacebook.databinding.ProfileActivityBinding
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.GridLayoutManager
import android.view.MenuInflater
import android.support.v7.widget.Toolbar
import java.util.*
import android.view.ViewGroup
import io.supernova.uitoolkit.recycler.GridSpacingItemDecoration
import android.view.Menu
import io.supernova.spacebook.activity.*
import android.os.Bundle
import android.view.View
import io.supernova.spacebook.R
import android.databinding.DataBindingUtil
import android.support.v7.widget.LinearLayoutManager
import android.view.MenuItem


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
	
	override fun onOptionsItemSelected(menuItem: MenuItem): Boolean {
	
		when (menuItem.itemId) {
			R.id.left_item_menu_item -> {
				this.onLeftItemPressed()
				return true
			}
			else -> {
				return super.onOptionsItemSelected(menuItem)
			}
		}
	}
	
	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
	
		super.onViewCreated(view, savedInstanceState)
		init()
	}
	
	fun onLeftItemPressed() {
	
		this.startProfileSettingsActivity()
	}
	
	fun init() {
	
		// Configure Photos component
		binding.photosRecyclerView.layoutManager = GridLayoutManager(this.context!!, 1, LinearLayoutManager.HORIZONTAL, false)
		binding.photosRecyclerView.adapter = ProfileActivityPhotosRecyclerViewAdapter()
		binding.photosRecyclerView.addItemDecoration(GridSpacingItemDecoration(this.context!!.resources.getDimension(R.dimen.profile_activity_photos_recycler_view_spacing)))
	}
	
	private fun startProfileSettingsActivity() {
	
		this.activity?.startActivity(ProfileSettingsActivity.newIntent(this.context!!))
	}
}
