/*
 * TimelineActivityTimelineRecyclerViewAdapter
 * Spacebook
 *
 * Created by Supernova.
 * Copyright © 2018 Supernova. All rights reserved.
 */

package io.supernova.spacebook.adapter;

import android.view.View;
import android.view.ViewGroup;
import io.supernova.spacebook.activity.*;
import android.view.LayoutInflater;
import io.supernova.spacebook.R;
import java.util.*;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;


public class TimelineActivityTimelineRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int NEWS_VIEW_HOLDER_VIEW_TYPE = 1;
	private static final int LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE = 2;
	private static final int NEWS_TWO_VIEW_HOLDER_VIEW_TYPE = 3;
	private static final int EVENT_VIEW_HOLDER_VIEW_TYPE = 4;
	private static final int ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE = 5;
	private static final List<Integer> MOCK_DATA = Arrays.asList(NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE);
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
	public int getItemCount() {

		// Defines number of items in RecyclerView.
		return 15;
	}

	@Override
	public int getItemViewType(int position) {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.
		return MOCK_DATA.get(position);
	}



	public static class NewsViewHolder extends RecyclerView.ViewHolder {

		private TextView melonHuskLaunchesTextView;

		public NewsViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			melonHuskLaunchesTextView = itemView.findViewById(R.id.melon_husk_launches_text_view);
			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class LifetimeEventViewHolder extends RecyclerView.ViewHolder {

		public LifetimeEventViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class NewsTwoViewHolder extends RecyclerView.ViewHolder {

		private TextView raidersFromTheGemTextView;

		public NewsTwoViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			raidersFromTheGemTextView = itemView.findViewById(R.id.raiders_from_the_gem_text_view);
			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class EventViewHolder extends RecyclerView.ViewHolder {

		private TextView guessWhoSBackTextView;

		public EventViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			guessWhoSBackTextView = itemView.findViewById(R.id.guess_who_sback_text_view);
			
			// Additional item ViewHolder initialization code can go here.
		}

		private void startEventDetailActivity() {

			itemView
					.getContext()
					.startActivity(EventDetailActivity.newIntent(itemView.getContext()));
		}
	}



	public static class AdvertisementViewHolder extends RecyclerView.ViewHolder {

		private TextView sprayAndPrayTextView;

		public AdvertisementViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			sprayAndPrayTextView = itemView.findViewById(R.id.spray_and_pray_text_view);
			
			// Additional item ViewHolder initialization code can go here.
		}
	}
}
