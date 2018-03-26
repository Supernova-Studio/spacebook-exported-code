package com.example.project;

import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import com.example.project.R;
import java.util.*;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;

/**
 *  Created by [Author].
 */
public class TimelineVCTableViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int NEWS_CELL_VIEW_TYPE = 1;
	private static final int LIFETIME_EVENT_CELL_VIEW_TYPE = 2;
	private static final int EVENT_CELL_VIEW_TYPE = 3;
	private static final int ADVERTISEMENT_CELL_VIEW_TYPE = 4;
	private static final List<Integer> MOCK_DATA = Arrays.asList(NEWS_CELL_VIEW_TYPE, LIFETIME_EVENT_CELL_VIEW_TYPE, EVENT_CELL_VIEW_TYPE, ADVERTISEMENT_CELL_VIEW_TYPE, NEWS_CELL_VIEW_TYPE, LIFETIME_EVENT_CELL_VIEW_TYPE, EVENT_CELL_VIEW_TYPE, ADVERTISEMENT_CELL_VIEW_TYPE, NEWS_CELL_VIEW_TYPE, LIFETIME_EVENT_CELL_VIEW_TYPE, EVENT_CELL_VIEW_TYPE, ADVERTISEMENT_CELL_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		switch(viewType) {
			case ADVERTISEMENT_CELL_VIEW_TYPE:
				return new AdvertisementCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.advertisement_cell, parent, false));
			case NEWS_CELL_VIEW_TYPE:
				return new NewsCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.news_cell, parent, false));
			case LIFETIME_EVENT_CELL_VIEW_TYPE:
				return new LifetimeEventCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.lifetime_event_cell, parent, false));
			case EVENT_CELL_VIEW_TYPE:
				return new EventCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.event_cell, parent, false));
		}
		
		throw new RuntimeException("Unsupported view type");
	}

	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {

	}

	@Override
	public int getItemCount() {
		return 12;
	}

	@Override
	public int getItemViewType(int position) {
		return MOCK_DATA.get(position);
	}

	public static class NewsCellViewHolder extends RecyclerView.ViewHolder {

		private TextView spacewoman185kLiLabel;
		private TextView kCommentsLabel;
		private TextView spacecrunchLabel;
		private TextView today145PmLabel;
		private TextView melonHuskLaunchesLabel;

		public NewsCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {
			spacewoman185kLiLabel = itemView.findViewById(R.id.spacewoman185k_li_label);
			kCommentsLabel = itemView.findViewById(R.id.k_comments_label);
			spacecrunchLabel = itemView.findViewById(R.id.spacecrunch_label);
			today145PmLabel = itemView.findViewById(R.id.today145_pm_label);
			melonHuskLaunchesLabel = itemView.findViewById(R.id.melon_husk_launches_label);
		}
	}

	public static class LifetimeEventCellViewHolder extends RecyclerView.ViewHolder {

		private TextView plutoPostedANewLLabel;
		private TextView inAComplicatedRelLabel;

		public LifetimeEventCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {
			plutoPostedANewLLabel = itemView.findViewById(R.id.pluto_posted_anew_llabel);
			inAComplicatedRelLabel = itemView.findViewById(R.id.in_acomplicated_rel_label);
		}
	}

	public static class EventCellViewHolder extends RecyclerView.ViewHolder {

		private TextView johnJoeAndJackLabel;
		private TextView label;
		private TextView guessWhoSBackLabel;
		private TextView laikaCreatedANewLabel;
		private TextView backFromTheSpaceLabel;

		public EventCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {
			itemView.setOnClickListener(view -> {
				onEventCellClicked();
			});
			johnJoeAndJackLabel = itemView.findViewById(R.id.john_joe_and_jack_label);
			label = itemView.findViewById(R.id.label);
			guessWhoSBackLabel = itemView.findViewById(R.id.guess_who_sback_label);
			laikaCreatedANewLabel = itemView.findViewById(R.id.laika_created_anew_label);
			backFromTheSpaceLabel = itemView.findViewById(R.id.back_from_the_space_label);
		}

		private void onEventCellClicked() {
			this.startEventDetailVC();
		}

		private void startEventDetailVC() {
			itemView.getContext().startActivity(EventDetailVC.newIntent(itemView.getContext()));
		}
	}

	public static class AdvertisementCellViewHolder extends RecyclerView.ViewHolder {

		private TextView hullTattoosANewLabel;
		private TextView sponsoredContentLabel;
		private TextView sprayAndPrayLabel;

		public AdvertisementCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {
			hullTattoosANewLabel = itemView.findViewById(R.id.hull_tattoos_anew_label);
			sponsoredContentLabel = itemView.findViewById(R.id.sponsored_content_label);
			sprayAndPrayLabel = itemView.findViewById(R.id.spray_and_pray_label);
		}
	}
}