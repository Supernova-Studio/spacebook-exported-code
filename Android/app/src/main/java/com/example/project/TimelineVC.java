package com.example.project;
/**
 *  Created by [Author].
 */
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.example.project.R;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import android.support.v7.widget.LinearLayoutManager;


// ----- Implementation ------

public class TimelineVC extends Fragment {

	private RecyclerView tableView;
	public static TimelineVC newInstance() {
		return new TimelineVC();
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		return inflater.inflate(R.layout.timeline_vc, container, false);
	}

	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		super.onViewCreated(view, savedInstanceState);
		init();
	}

	public void init() {
		tableView = getView().findViewById(R.id.table_view);
		tableView.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
		tableView.setAdapter(new TimelineVCTableViewAdapter());
	}


}
