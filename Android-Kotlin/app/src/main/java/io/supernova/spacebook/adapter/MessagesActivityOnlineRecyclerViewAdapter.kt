/*
 * MessagesActivityOnlineRecyclerViewAdapter
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.adapter

import android.view.View
import android.view.ViewGroup
import io.supernova.spacebook.activity.*
import android.view.LayoutInflater
import io.supernova.spacebook.R
import java.util.*
import android.support.v7.widget.RecyclerView


class MessagesActivityOnlineRecyclerViewAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {

		private val ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE = 1
		private val ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE = 2
		private val ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE = 3
		private val MOCK_DATA = listOf(ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE)
	}


	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {

		when (viewType) {
			ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE -> return OnlinePersonViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.online_person_view_holder, parent, false))
			ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE -> return OnlinePersonTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.online_person_two_view_holder, parent, false))
			ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE -> return OnlinePersonThreeViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.online_person_three_view_holder, parent, false))
		}
		
		throw RuntimeException("Unsupported view type")
	}


	override fun onBindViewHolder(viewHolder: RecyclerView.ViewHolder, position: Int) {

		// Here you can bind RecyclerView item data.
	}


	override fun getItemCount(): Int {

		// Defines number of items in RecyclerView.
		return 9
	}


	override fun getItemViewType(position: Int): Int {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.
		return MOCK_DATA.get(position)
	}


	class OnlinePersonViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class OnlinePersonTwoViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class OnlinePersonThreeViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}

}

