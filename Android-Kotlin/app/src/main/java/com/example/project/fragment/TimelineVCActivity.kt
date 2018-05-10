/*
 * TimelineVCActivity
 * Spacebook
 *
 * Created by [Author].
 * Copyright © 2018 Supernova. All rights reserved.
 */

package com.example.project.fragment

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import java.util.*
import com.example.project.R
import com.example.project.activity.*
import android.support.v7.widget.RecyclerView
import com.example.project.adapter.TimelineVCActivityTimelineRecyclerViewAdapter
import android.support.v7.widget.LinearLayoutManager


class TimelineVCActivity : Fragment() {

	companion object {

		fun newInstance(): TimelineVCActivity {

			// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.

			return TimelineVCActivity()
		}

	}


	private lateinit var timelineRecyclerView: RecyclerView

	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {

		return inflater.inflate(R.layout.timeline_vcactivity, container, false)
	}


	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {

		super.onViewCreated(view, savedInstanceState)
		init()
	}


	private fun init() {

		timelineRecyclerView = view!!.findViewById(R.id.timeline_recycler_view)
		timelineRecyclerView.setLayoutManager(LinearLayoutManager(context, LinearLayoutManager.VERTICAL, false))
		timelineRecyclerView.setAdapter(TimelineVCActivityTimelineRecyclerViewAdapter())
		
		// Additional Fragment initialization code can go here.

	}
}

