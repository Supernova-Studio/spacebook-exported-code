/*
 * MessagesActivity
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
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import io.supernova.spacebook.adapter.MessagesActivityMessagesRecyclerViewAdapter;
import io.supernova.spacebook.adapter.MessagesActivityOnlineRecyclerViewAdapter;
import android.support.v7.widget.LinearLayoutManager;


public class MessagesActivity extends Fragment {

	private RecyclerView onlineRecyclerView;
	private RecyclerView messagesRecyclerView;

	public static MessagesActivity newInstance() {

		// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.
		return new MessagesActivity();
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

		return inflater.inflate(R.layout.messages_activity, container, false);
	}

	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {

		super.onViewCreated(view, savedInstanceState);
		init();
	}

	private void init() {

		onlineRecyclerView = getView().findViewById(R.id.online_recycler_view);
		// Configure Online component
		onlineRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 1, LinearLayoutManager.HORIZONTAL, false));
		onlineRecyclerView.setAdapter(new MessagesActivityOnlineRecyclerViewAdapter());
		
		messagesRecyclerView = getView().findViewById(R.id.messages_recycler_view);
		// Configure Messages component
		messagesRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
		messagesRecyclerView.setAdapter(new MessagesActivityMessagesRecyclerViewAdapter());
		
		// Additional Fragment initialization code can go here.
	}
}
