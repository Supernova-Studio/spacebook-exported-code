package com.example.project;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.support.v7.widget.RecyclerView;
import com.example.project.R;
import android.widget.TextView;


// ----- Implementation ------

public class TimelineVCTableViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {


	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		return new NewsCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.news_cell, parent, false));
	}

	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {

	}

	@Override
	public int getItemCount() {
		return 10;
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

		public void init() {
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

		public void init() {
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

		public void init() {
			itemView.setOnClickListener(view -> {
				onEventCellClicked();
			});
			johnJoeAndJackLabel = itemView.findViewById(R.id.john_joe_and_jack_label);
			label = itemView.findViewById(R.id.label);
			guessWhoSBackLabel = itemView.findViewById(R.id.guess_who_sback_label);
			laikaCreatedANewLabel = itemView.findViewById(R.id.laika_created_anew_label);
			backFromTheSpaceLabel = itemView.findViewById(R.id.back_from_the_space_label);
		}

		public void onEventCellClicked() {
			this.startEventDetailVC();
		}

		public void startEventDetailVC() {
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

		public void init() {
			hullTattoosANewLabel = itemView.findViewById(R.id.hull_tattoos_anew_label);
			sponsoredContentLabel = itemView.findViewById(R.id.sponsored_content_label);
			sprayAndPrayLabel = itemView.findViewById(R.id.spray_and_pray_label);
		}


	}

}
