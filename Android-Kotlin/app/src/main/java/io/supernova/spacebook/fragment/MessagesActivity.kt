/*
 * MessagesActivity
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
import android.support.v7.widget.GridLayoutManager
import android.support.v7.widget.RecyclerView
import io.supernova.spacebook.adapter.MessagesActivityMessagesRecyclerViewAdapter
import io.supernova.spacebook.adapter.MessagesActivityOnlineRecyclerViewAdapter
import android.support.v7.widget.LinearLayoutManager


class MessagesActivity : Fragment() {

	companion object {

		fun newInstance(): MessagesActivity {

			// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.
			return MessagesActivity()
		}

	}


	private lateinit var onlineRecyclerView: RecyclerView
	private lateinit var messagesRecyclerView: RecyclerView

	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {

		return inflater.inflate(R.layout.messages_activity, container, false)
	}


	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {

		super.onViewCreated(view, savedInstanceState)
		init()
	}


	private fun init() {

		onlineRecyclerView = view!!.findViewById(R.id.online_recycler_view)
		// Configure Online component
		onlineRecyclerView.setLayoutManager(GridLayoutManager(context, 1, LinearLayoutManager.HORIZONTAL, false))
		onlineRecyclerView.setAdapter(MessagesActivityOnlineRecyclerViewAdapter())
		
		messagesRecyclerView = view!!.findViewById(R.id.messages_recycler_view)
		// Configure Messages component
		messagesRecyclerView.setLayoutManager(LinearLayoutManager(context, LinearLayoutManager.VERTICAL, false))
		messagesRecyclerView.setAdapter(MessagesActivityMessagesRecyclerViewAdapter())
		
		// Additional Fragment initialization code can go here.
	}
}

