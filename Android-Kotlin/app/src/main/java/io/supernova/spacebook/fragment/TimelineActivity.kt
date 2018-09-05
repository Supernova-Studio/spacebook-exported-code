/*
 * TimelineActivity
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.fragment

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import java.util.*
import io.supernova.spacebook.R
import io.supernova.spacebook.activity.*
import android.support.v7.widget.RecyclerView
import io.supernova.spacebook.adapter.TimelineActivityTimelineRecyclerViewAdapter
import android.widget.TextView
import android.support.v7.widget.LinearLayoutManager


class TimelineActivity : Fragment() {

	companion object {

		fun newInstance(): TimelineActivity {

			// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.
			return TimelineActivity()
		}

	}


	private lateinit var timelineRecyclerView: RecyclerView

	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {

		return inflater.inflate(R.layout.timeline_activity, container, false)
	}


	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {

		super.onViewCreated(view, savedInstanceState)
		init()
	}


	private fun init() {

		timelineRecyclerView = view!!.findViewById(R.id.timeline_recycler_view)
		// Configure Timeline component
		timelineRecyclerView.setLayoutManager(LinearLayoutManager(context, LinearLayoutManager.VERTICAL, false))
		timelineRecyclerView.setAdapter(TimelineActivityTimelineRecyclerViewAdapter())
		
		// Additional Fragment initialization code can go here.
	}
}

