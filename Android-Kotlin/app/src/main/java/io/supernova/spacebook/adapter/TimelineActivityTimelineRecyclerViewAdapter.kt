/**
 * Created by Supernova.
 */

package io.supernova.spacebook.adapter

import io.supernova.spacebook.databinding.AdvertisementViewHolderBinding
import io.supernova.spacebook.databinding.EventViewHolderBinding
import android.databinding.DataBindingUtil
import android.view.View
import java.util.*
import android.view.ViewGroup
import android.view.LayoutInflater
import io.supernova.spacebook.databinding.LifetimeEventViewHolderBinding
import android.support.v7.widget.RecyclerView
import io.supernova.spacebook.databinding.NewsTwoViewHolderBinding
import io.supernova.spacebook.R
import io.supernova.spacebook.databinding.NewsViewHolderBinding


class TimelineActivityTimelineRecyclerViewAdapter: RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {
		val NEWS_VIEW_HOLDER_VIEW_TYPE = 1
		val LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE = 2
		val NEWS_TWO_VIEW_HOLDER_VIEW_TYPE = 3
		val EVENT_VIEW_HOLDER_VIEW_TYPE = 4
		val ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE = 5
		
		val MOCK_DATA = listOf(NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE)
	}
	
	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
	
		when (viewType) {
			NEWS_VIEW_HOLDER_VIEW_TYPE -> {
				return NewsViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.news_view_holder, parent, false))
			}
			LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE -> {
				return LifetimeEventViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.lifetime_event_view_holder, parent, false))
			}
			NEWS_TWO_VIEW_HOLDER_VIEW_TYPE -> {
				return NewsTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.news_two_view_holder, parent, false))
			}
			EVENT_VIEW_HOLDER_VIEW_TYPE -> {
				return EventViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.event_view_holder, parent, false))
			}
			ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE -> {
				return AdvertisementViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.advertisement_view_holder, parent, false))
			}
		}
		
		throw RuntimeException("Unsupported view type")
	}
	
	override fun onBindViewHolder(viewHolder: RecyclerView.ViewHolder, position: Int) {
	
		// Here you can bind RecyclerView item data.
	}
	
	override fun getItemViewType(position: Int): Int {
	
		return MOCK_DATA.get(position)
	}
	
	override fun getItemCount(): Int {
	
		return MOCK_DATA.size
	}
	
	
	class NewsViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: NewsViewHolderBinding
		init {
			binding = NewsViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class LifetimeEventViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: LifetimeEventViewHolderBinding
		init {
			binding = LifetimeEventViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class NewsTwoViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: NewsTwoViewHolderBinding
		init {
			binding = NewsTwoViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class EventViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: EventViewHolderBinding
		init {
			binding = EventViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class AdvertisementViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: AdvertisementViewHolderBinding
		init {
			binding = AdvertisementViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
}
