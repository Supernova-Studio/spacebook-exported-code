/*
 * ProfileActivityPhotosRecyclerViewAdapter
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


class ProfileActivityPhotosRecyclerViewAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {

		private val VIEW_VIEW_HOLDER_VIEW_TYPE = 1
		private val VIEW_TWO_VIEW_HOLDER_VIEW_TYPE = 2
		private val VIEW_THREE_VIEW_HOLDER_VIEW_TYPE = 3
		private val MOCK_DATA = listOf(VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE, VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE, VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE)
	}


	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {

		when (viewType) {
			VIEW_VIEW_HOLDER_VIEW_TYPE -> return ViewViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_view_holder, parent, false))
			VIEW_TWO_VIEW_HOLDER_VIEW_TYPE -> return ViewTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_two_view_holder, parent, false))
			VIEW_THREE_VIEW_HOLDER_VIEW_TYPE -> return ViewThreeViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_three_view_holder, parent, false))
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


	class ViewViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}


		private fun startProfilePhotosActivity() {

			itemView
					.getContext()
					.startActivity(ProfilePhotosActivity.newIntent(itemView.getContext()))
		}
	}



	class ViewTwoViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class ViewThreeViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}

}

