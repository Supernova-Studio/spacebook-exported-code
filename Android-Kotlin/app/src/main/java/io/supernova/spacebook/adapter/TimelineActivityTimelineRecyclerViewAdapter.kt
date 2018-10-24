/**
 * Created by Supernova.
 */

package io.supernova.spacebook.adapter

import android.view.ViewGroup
import android.text.style.ForegroundColorSpan
import io.supernova.spacebook.R
import android.text.SpannableString
import io.supernova.spacebook.databinding.EventViewHolderBinding
import java.util.*
import android.text.Spannable
import android.view.LayoutInflater
import android.view.View
import io.supernova.spacebook.databinding.NewsViewHolderBinding
import io.supernova.spacebook.databinding.LifetimeEventViewHolderBinding
import android.text.style.RelativeSizeSpan
import android.databinding.DataBindingUtil
import io.supernova.spacebook.databinding.AdvertisementViewHolderBinding
import io.supernova.spacebook.databinding.NewsTwoViewHolderBinding
import android.support.v7.widget.RecyclerView


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
        
            // Configure Melon Husk launches component
            val melonHuskLaunchesTextViewText = SpannableString(itemView.context.getString(R.string.news_view_holder_melon_husk_launches_text_view_text))
            binding.melonHuskLaunchesTextView.text = melonHuskLaunchesTextViewText
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
        
            // Configure Raiders from the Gem component
            val raidersFromTheGemTextViewText = SpannableString(itemView.context.getString(R.string.news_two_view_holder_raiders_from_the_gem_text_view_text))
            binding.raidersFromTheGemTextView.text = raidersFromTheGemTextViewText
        }
    }
    
    
    class EventViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
    
        private lateinit var binding: EventViewHolderBinding
        init {
            binding = EventViewHolderBinding.bind(itemView)
            init()
        }
        fun init() {
        
            // Configure Guess who’s back? component
            val guessWhoSbackTextViewText = SpannableString(itemView.context.getString(R.string.event_view_holder_guess_who_sback_text_view_text))
            binding.guessWhoSbackTextView.text = guessWhoSbackTextViewText
        }
    }
    
    
    class AdvertisementViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
    
        private lateinit var binding: AdvertisementViewHolderBinding
        init {
            binding = AdvertisementViewHolderBinding.bind(itemView)
            init()
        }
        fun init() {
        
            // Configure Spray and Pray component
            val sprayAndPrayTextViewText = SpannableString(itemView.context.getString(R.string.advertisement_view_holder_spray_and_pray_text_view_text))
            binding.sprayAndPrayTextView.text = sprayAndPrayTextViewText
        }
    }
}




