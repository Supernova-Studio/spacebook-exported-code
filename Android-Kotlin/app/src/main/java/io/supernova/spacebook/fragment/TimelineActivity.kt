/**
 * Created by Supernova.
 */

package io.supernova.spacebook.fragment

import java.util.*
import android.support.v7.widget.LinearLayoutManager
import android.support.v4.app.Fragment
import android.databinding.DataBindingUtil
import android.support.v7.app.AppCompatActivity
import android.view.ViewGroup
import android.view.LayoutInflater
import io.supernova.spacebook.R
import io.supernova.spacebook.databinding.TimelineActivityBinding
import android.os.Bundle
import io.supernova.spacebook.adapter.TimelineActivityTimelineRecyclerViewAdapter
import io.supernova.spacebook.activity.*
import android.view.View


class TimelineActivity: Fragment() {

	companion object {
		
		fun newInstance(): TimelineActivity {
		
			val fragment = TimelineActivity()
			val arguments = Bundle()
			fragment.arguments = arguments
			return fragment
		}
	}
	
	private lateinit var binding: TimelineActivityBinding
	
	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
	
		binding = DataBindingUtil.inflate(inflater, R.layout.timeline_activity, container, false)
		return binding.root
	}
	
	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
	
		super.onViewCreated(view, savedInstanceState)
		init()
	}
	
	fun init() {
	
		// Configure Timeline component
		binding.timelineRecyclerView.layoutManager = LinearLayoutManager(this.context!!, LinearLayoutManager.VERTICAL, false)
		binding.timelineRecyclerView.adapter = TimelineActivityTimelineRecyclerViewAdapter()
	}
}
