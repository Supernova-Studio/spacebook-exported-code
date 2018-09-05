/*
 * MessagesVCActivity
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
import android.support.v7.widget.GridLayoutManager
import android.support.v7.widget.RecyclerView
import com.example.project.adapter.MessagesVCActivityOnlineRecyclerViewAdapter
import com.example.project.adapter.MessagesVCActivityMessagesRecyclerViewAdapter
import android.support.v7.widget.LinearLayoutManager


class MessagesVCActivity : Fragment() {

	companion object {

		fun newInstance(): MessagesVCActivity {

			// Create a Bundle instance, fill it with your Fragment initial data and pass it to Fragment's setArguements() method here.

			return MessagesVCActivity()
		}

	}


	private lateinit var onlineRecyclerView: RecyclerView
	private lateinit var messagesRecyclerView: RecyclerView

	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {

		return inflater.inflate(R.layout.messages_vcactivity, container, false)
	}


	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {

		super.onViewCreated(view, savedInstanceState)
		init()
	}


	private fun init() {

		onlineRecyclerView = view!!.findViewById(R.id.online_recycler_view)
		messagesRecyclerView = view!!.findViewById(R.id.messages_recycler_view)
		onlineRecyclerView.setLayoutManager(GridLayoutManager(context, 1, LinearLayoutManager.HORIZONTAL, false))
		onlineRecyclerView.setAdapter(MessagesVCActivityOnlineRecyclerViewAdapter())
		messagesRecyclerView.setLayoutManager(LinearLayoutManager(context, LinearLayoutManager.VERTICAL, false))
		messagesRecyclerView.setAdapter(MessagesVCActivityMessagesRecyclerViewAdapter())
		
		// Additional Fragment initialization code can go here.

	}
}

