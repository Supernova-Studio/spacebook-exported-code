/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.fragment;

import io.supernova.spacebook.adapter.TimelineActivityTimelineRecyclerViewAdapter;
import io.supernova.spacebook.R;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.view.ViewGroup;
import android.support.v7.app.AppCompatActivity;
import io.supernova.spacebook.databinding.TimelineActivityBinding;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import io.supernova.spacebook.activity.*;
import java.util.*;
import android.databinding.DataBindingUtil;


public class TimelineActivity extends Fragment {
	
	public static TimelineActivity newInstance() {
	
		TimelineActivity fragment = new TimelineActivity();
		Bundle arguments = new Bundle();
		fragment.setArguments(arguments);
		return fragment;
	}
	
	private TimelineActivityBinding binding;
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
	
		binding = DataBindingUtil.inflate(inflater, R.layout.timeline_activity, container, false);
		return binding.getRoot();
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
	
		super.onViewCreated(view, savedInstanceState);
		init();
	}
	
	public void init() {
	
		// Configure Timeline component
		binding.timelineRecyclerView.setLayoutManager(new LinearLayoutManager(this.getContext(), LinearLayoutManager.VERTICAL, false));
		binding.timelineRecyclerView.setAdapter(new TimelineActivityTimelineRecyclerViewAdapter());
	}
}
