/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.fragment;

import android.view.ViewGroup;
import io.supernova.spacebook.R;
import io.supernova.spacebook.activity.*;
import java.util.*;
import android.support.constraint.ConstraintLayout;
import android.view.View;
import android.view.LayoutInflater;
import io.supernova.spacebook.adapter.TimelineActivityTimelineRecyclerViewAdapter;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v4.app.Fragment;


public class TimelineActivity extends Fragment {
    public static TimelineActivity newInstance() {
    
        TimelineActivity fragment = new TimelineActivity();
        Bundle arguments = new Bundle();
        fragment.setArguments(arguments);
        return fragment;
    }
    
    private RecyclerView timelineRecyclerView;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    
        return inflater.inflate(R.layout.timeline_activity, container, false);
    }
    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
    
        super.onViewCreated(view, savedInstanceState);
        init();
    }
    public void init() {
    
        // Configure Timeline component
        timelineRecyclerView = getView().findViewById(R.id.timeline_recycler_view);
        timelineRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
        timelineRecyclerView.setAdapter(new TimelineActivityTimelineRecyclerViewAdapter());
    }
}




