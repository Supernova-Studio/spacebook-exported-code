/*
 * TimelineActivityTimelineRecyclerViewAdapter
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


class TimelineActivityTimelineRecyclerViewAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {

		private val NEWS_VIEW_HOLDER_VIEW_TYPE = 1
		private val LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE = 2
		private val NEWS_TWO_VIEW_HOLDER_VIEW_TYPE = 3
		private val EVENT_VIEW_HOLDER_VIEW_TYPE = 4
		private val ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE = 5
		private val MOCK_DATA = listOf(NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE)
	}


	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {

		when (viewType) {
			NEWS_VIEW_HOLDER_VIEW_TYPE -> return NewsViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.news_view_holder, parent, false))
			LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE -> return LifetimeEventViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.lifetime_event_view_holder, parent, false))
			NEWS_TWO_VIEW_HOLDER_VIEW_TYPE -> return NewsTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.news_two_view_holder, parent, false))
			EVENT_VIEW_HOLDER_VIEW_TYPE -> return EventViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.event_view_holder, parent, false))
			ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE -> return AdvertisementViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.advertisement_view_holder, parent, false))
		}
		
		throw RuntimeException("Unsupported view type")
	}


	override fun onBindViewHolder(viewHolder: RecyclerView.ViewHolder, position: Int) {

		// Here you can bind RecyclerView item data.
	}


	override fun getItemCount(): Int {

		// Defines number of items in RecyclerView.
		return 15
	}


	override fun getItemViewType(position: Int): Int {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.
		return MOCK_DATA.get(position)
	}


	class NewsViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		private lateinit var melonHuskLaunchesTextView: TextView

		init {

			init()
		}

		private fun init() {

			melonHuskLaunchesTextView = itemView.findViewById(R.id.melon_husk_launches_text_view)
			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class LifetimeEventViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {

			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class NewsTwoViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		private lateinit var raidersFromTheGemTextView: TextView

		init {

			init()
		}

		private fun init() {

			raidersFromTheGemTextView = itemView.findViewById(R.id.raiders_from_the_gem_text_view)
			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	class EventViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		private lateinit var guessWhoSBackTextView: TextView

		init {

			init()
		}

		private fun init() {

			guessWhoSBackTextView = itemView.findViewById(R.id.guess_who_sback_text_view)
			
			// Additional item ViewHolder initialization code can go here.
		}


		private fun startEventDetailActivity() {

			itemView
					.getContext()
					.startActivity(EventDetailActivity.newIntent(itemView.getContext()))
		}
	}



	class AdvertisementViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		private lateinit var sprayAndPrayTextView: TextView

		init {

			init()
		}

		private fun init() {

			sprayAndPrayTextView = itemView.findViewById(R.id.spray_and_pray_text_view)
			
			// Additional item ViewHolder initialization code can go here.
		}
	}

}

