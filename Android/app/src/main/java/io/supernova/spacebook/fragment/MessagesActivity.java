/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.fragment;

import android.view.ViewGroup;
import io.supernova.spacebook.R;
import android.support.v7.widget.GridLayoutManager;
import io.supernova.spacebook.activity.*;
import java.util.*;
import android.support.constraint.ConstraintLayout;
import android.view.View;
import android.view.LayoutInflater;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import io.supernova.spacebook.adapter.MessagesActivityOnlineRecyclerViewAdapter;
import io.supernova.spacebook.adapter.MessagesActivityMessagesRecyclerViewAdapter;


public class MessagesActivity extends Fragment {
    public static MessagesActivity newInstance() {
    
        MessagesActivity fragment = new MessagesActivity();
        Bundle arguments = new Bundle();
        fragment.setArguments(arguments);
        return fragment;
    }
    
    private RecyclerView onlineRecyclerView;
    private RecyclerView messagesRecyclerView;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    
        return inflater.inflate(R.layout.messages_activity, container, false);
    }
    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
    
        super.onViewCreated(view, savedInstanceState);
        init();
    }
    public void init() {
    
        // Configure Online component
        onlineRecyclerView = getView().findViewById(R.id.online_recycler_view);
        onlineRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 1, LinearLayoutManager.HORIZONTAL, false));
        onlineRecyclerView.setAdapter(new MessagesActivityOnlineRecyclerViewAdapter());
        
        // Configure Messages component
        messagesRecyclerView = getView().findViewById(R.id.messages_recycler_view);
        messagesRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
        messagesRecyclerView.setAdapter(new MessagesActivityMessagesRecyclerViewAdapter());
    }
}




