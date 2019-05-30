/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.adapter;

import android.support.v7.widget.RecyclerView;
import io.supernova.spacebook.databinding.NewsViewHolderBinding;
import io.supernova.spacebook.databinding.LifetimeEventViewHolderBinding;
import android.view.View;
import io.supernova.spacebook.databinding.AdvertisementViewHolderBinding;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.*;
import android.databinding.DataBindingUtil;
import io.supernova.spacebook.databinding.NewsTwoViewHolderBinding;
import io.supernova.spacebook.databinding.EventViewHolderBinding;
import io.supernova.spacebook.R;


public class TimelineActivityTimelineRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
	public static final int NEWS_VIEW_HOLDER_VIEW_TYPE = 1;
	public static final int LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE = 2;
	public static final int NEWS_TWO_VIEW_HOLDER_VIEW_TYPE = 3;
	public static final int EVENT_VIEW_HOLDER_VIEW_TYPE = 4;
	public static final int ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE = 5;
	
	public static final List<Integer> MOCK_DATA = Arrays.asList(NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE);
	
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
	
		switch (viewType) {
			case NEWS_VIEW_HOLDER_VIEW_TYPE: 
				return new NewsViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.news_view_holder, parent, false));
			case LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE: 
				return new LifetimeEventViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.lifetime_event_view_holder, parent, false));
			case NEWS_TWO_VIEW_HOLDER_VIEW_TYPE: 
				return new NewsTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.news_two_view_holder, parent, false));
			case EVENT_VIEW_HOLDER_VIEW_TYPE: 
				return new EventViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.event_view_holder, parent, false));
			case ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE: 
				return new AdvertisementViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.advertisement_view_holder, parent, false));
		}
		
		throw new RuntimeException("Unsupported view type");
	}
	
	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
	
		// Here you can bind RecyclerView item data.
	}
	
	@Override
	public int getItemViewType(int position) {
	
		return MOCK_DATA.get(position);
	}
	
	@Override
	public int getItemCount() {
	
		return MOCK_DATA.size();
	}
	
	
	public static class NewsViewHolder extends RecyclerView.ViewHolder {
		private NewsViewHolderBinding binding;
		public NewsViewHolder(View itemView) {
			super(itemView);
			binding = NewsViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class LifetimeEventViewHolder extends RecyclerView.ViewHolder {
		private LifetimeEventViewHolderBinding binding;
		public LifetimeEventViewHolder(View itemView) {
			super(itemView);
			binding = LifetimeEventViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class NewsTwoViewHolder extends RecyclerView.ViewHolder {
		private NewsTwoViewHolderBinding binding;
		public NewsTwoViewHolder(View itemView) {
			super(itemView);
			binding = NewsTwoViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class EventViewHolder extends RecyclerView.ViewHolder {
		private EventViewHolderBinding binding;
		public EventViewHolder(View itemView) {
			super(itemView);
			binding = EventViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class AdvertisementViewHolder extends RecyclerView.ViewHolder {
		private AdvertisementViewHolderBinding binding;
		public AdvertisementViewHolder(View itemView) {
			super(itemView);
			binding = AdvertisementViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
}
