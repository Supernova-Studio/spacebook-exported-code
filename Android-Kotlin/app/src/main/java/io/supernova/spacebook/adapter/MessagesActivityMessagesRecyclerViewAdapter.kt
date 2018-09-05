/*
 * MessagesActivityMessagesRecyclerViewAdapter
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


class MessagesActivityMessagesRecyclerViewAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {

		private val MESSAGE_VIEW_HOLDER_VIEW_TYPE = 1
		private val MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE = 2
		private val MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE = 3
		private val MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE = 4
		private val MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE = 5
		private val MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE = 6
		private val MOCK_DATA = listOf(MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE, MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE, MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE)
	}


	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {

		when (viewType) {
			MESSAGE_VIEW_HOLDER_VIEW_TYPE -> return MessageViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_view_holder, parent, false))
			MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE -> return MessageTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_two_view_holder, parent, false))
			MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE -> return MessageThreeViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_three_view_holder, parent, false))
			MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE -> return MessageFourViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_four_view_holder, parent, false))
			MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE -> return MessageFiveViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_five_view_holder, parent, false))
			MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE -> return MessageSixViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_six_view_holder, parent, false))
		}
		
		throw RuntimeException("Unsupported view type")
	}


	override fun onBindViewHolder(viewHolder: RecyclerView.ViewHolder, position: Int) {

		// Here you can bind RecyclerView item data.
	}


	override fun getItemCount(): Int {

		// Defines number of items in RecyclerView.
		return 18
	}


	override fun getItemViewType(position: Int): Int {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.
		return MOCK_DATA.get(position)
	}


	class MessageViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class MessageTwoViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class MessageThreeViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class MessageFourViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class MessageFiveViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class MessageSixViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}

}

