/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.fragment;

import android.support.v4.app.Fragment;
import android.view.View;
import io.supernova.spacebook.adapter.MessagesActivityMessagesRecyclerViewAdapter;
import io.supernova.spacebook.activity.*;
import io.supernova.spacebook.R;
import io.supernova.spacebook.adapter.MessagesActivityOnlineRecyclerViewAdapter;
import io.supernova.spacebook.databinding.MessagesActivityBinding;
import android.support.v7.widget.LinearLayoutManager;
import android.databinding.DataBindingUtil;
import io.supernova.uitoolkit.recycler.GridSpacingItemDecoration;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import java.util.*;
import android.os.Bundle;
import android.view.ViewGroup;


public class MessagesActivity extends Fragment {
	
	public static MessagesActivity newInstance() {
	
		MessagesActivity fragment = new MessagesActivity();
		Bundle arguments = new Bundle();
		fragment.setArguments(arguments);
		return fragment;
	}
	
	private MessagesActivityBinding binding;
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
	
		binding = DataBindingUtil.inflate(inflater, R.layout.messages_activity, container, false);
		return binding.getRoot();
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
	
		super.onViewCreated(view, savedInstanceState);
		init();
	}
	
	public void init() {
	
		// Configure Online component
		binding.onlineRecyclerView.setLayoutManager(new GridLayoutManager(this.getContext(), 1, LinearLayoutManager.HORIZONTAL, false));
		binding.onlineRecyclerView.setAdapter(new MessagesActivityOnlineRecyclerViewAdapter());
		binding.onlineRecyclerView.addItemDecoration(new GridSpacingItemDecoration(this.getContext().getResources().getDimension(R.dimen.messages_activity_online_recycler_view_spacing)));
		
		// Configure Messages component
		binding.messagesRecyclerView.setLayoutManager(new LinearLayoutManager(this.getContext(), LinearLayoutManager.VERTICAL, false));
		binding.messagesRecyclerView.setAdapter(new MessagesActivityMessagesRecyclerViewAdapter());
	}
}
