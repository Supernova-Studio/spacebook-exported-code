/*
 * ProfilePhotosActivityGalleryRecyclerViewAdapter
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
import android.widget.TextView


class ProfilePhotosActivityGalleryRecyclerViewAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {

		private val TITLE_VIEW_HOLDER_VIEW_TYPE = 1
		private val VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE = 2
		private val VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE = 3
		private val TITLE_TWO_VIEW_HOLDER_VIEW_TYPE = 4
		private val VIEW_SIX_VIEW_HOLDER_VIEW_TYPE = 5
		private val VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE = 6
		private val VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE = 7
		private val MOCK_DATA = listOf(TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE, TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE, TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE)
	}


	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {

		when (viewType) {
			TITLE_VIEW_HOLDER_VIEW_TYPE -> return TitleViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.title_view_holder, parent, false))
			VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE -> return ViewFourViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_four_view_holder, parent, false))
			VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE -> return ViewFiveViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_five_view_holder, parent, false))
			TITLE_TWO_VIEW_HOLDER_VIEW_TYPE -> return TitleTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.title_two_view_holder, parent, false))
			VIEW_SIX_VIEW_HOLDER_VIEW_TYPE -> return ViewSixViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_six_view_holder, parent, false))
			VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE -> return ViewSevenViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_seven_view_holder, parent, false))
			VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE -> return ViewEightViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_eight_view_holder, parent, false))
		}
		
		throw RuntimeException("Unsupported view type")
	}


	override fun onBindViewHolder(viewHolder: RecyclerView.ViewHolder, position: Int) {

		// Here you can bind RecyclerView item data.
	}


	override fun getItemCount(): Int {

		// Defines number of items in RecyclerView.
		return 21
	}


	override fun getItemViewType(position: Int): Int {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.
		return MOCK_DATA.get(position)
	}


	class TitleViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		private lateinit var todayTextView: TextView

		init {

			init()
		}

		private fun init() {

			todayTextView = itemView.findViewById(R.id.today_text_view)
			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class ViewFourViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class ViewFiveViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class TitleTwoViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		private lateinit var tomorrowTextView: TextView

		init {

			init()
		}

		private fun init() {

			tomorrowTextView = itemView.findViewById(R.id.tomorrow_text_view)
			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class ViewSixViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class ViewSevenViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class ViewEightViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}

}

