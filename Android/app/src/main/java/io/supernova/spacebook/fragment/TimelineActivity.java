/*
 * TimelineActivity
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.fragment;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.*;
import io.supernova.spacebook.R;
import io.supernova.spacebook.activity.*;
import android.support.v7.widget.RecyclerView;
import io.supernova.spacebook.adapter.TimelineActivityTimelineRecyclerViewAdapter;
import android.widget.TextView;
import android.support.v7.widget.LinearLayoutManager;


public class TimelineActivity extends Fragment {

	private RecyclerView timelineRecyclerView;

	public static TimelineActivity newInstance() {

		// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.
		return new TimelineActivity();
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

		return inflater.inflate(R.layout.timeline_activity, container, false);
	}

	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {

		super.onViewCreated(view, savedInstanceState);
		init();
	}

	private void init() {

		timelineRecyclerView = getView().findViewById(R.id.timeline_recycler_view);
		// Configure Timeline component
		timelineRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
		timelineRecyclerView.setAdapter(new TimelineActivityTimelineRecyclerViewAdapter());
		
		// Additional Fragment initialization code can go here.
	}
}
