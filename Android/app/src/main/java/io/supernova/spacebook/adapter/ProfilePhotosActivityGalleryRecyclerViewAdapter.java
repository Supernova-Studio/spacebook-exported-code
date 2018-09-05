/*
 * ProfilePhotosActivityGalleryRecyclerViewAdapter
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


public class ProfilePhotosActivityGalleryRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int TITLE_VIEW_HOLDER_VIEW_TYPE = 1;
	private static final int VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE = 2;
	private static final int VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE = 3;
	private static final int TITLE_TWO_VIEW_HOLDER_VIEW_TYPE = 4;
	private static final int VIEW_SIX_VIEW_HOLDER_VIEW_TYPE = 5;
	private static final int VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE = 6;
	private static final int VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE = 7;
	private static final List<Integer> MOCK_DATA = Arrays.asList(TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE, TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE, TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

		switch (viewType) {
			case TITLE_VIEW_HOLDER_VIEW_TYPE:

				return new TitleViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.title_view_holder, parent, false));
			case VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE:

				return new ViewFourViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_four_view_holder, parent, false));
			case VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE:

				return new ViewFiveViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_five_view_holder, parent, false));
			case TITLE_TWO_VIEW_HOLDER_VIEW_TYPE:

				return new TitleTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.title_two_view_holder, parent, false));
			case VIEW_SIX_VIEW_HOLDER_VIEW_TYPE:

				return new ViewSixViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_six_view_holder, parent, false));
			case VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE:

				return new ViewSevenViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_seven_view_holder, parent, false));
			case VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE:

				return new ViewEightViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_eight_view_holder, parent, false));
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
		return 21;
	}

	@Override
	public int getItemViewType(int position) {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.
		return MOCK_DATA.get(position);
	}



	public static class TitleViewHolder extends RecyclerView.ViewHolder {

		private TextView todayTextView;

		public TitleViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			todayTextView = itemView.findViewById(R.id.today_text_view);
			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class ViewFourViewHolder extends RecyclerView.ViewHolder {

		public ViewFourViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class ViewFiveViewHolder extends RecyclerView.ViewHolder {

		public ViewFiveViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class TitleTwoViewHolder extends RecyclerView.ViewHolder {

		private TextView tomorrowTextView;

		public TitleTwoViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			tomorrowTextView = itemView.findViewById(R.id.tomorrow_text_view);
			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class ViewSixViewHolder extends RecyclerView.ViewHolder {

		public ViewSixViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class ViewSevenViewHolder extends RecyclerView.ViewHolder {

		public ViewSevenViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class ViewEightViewHolder extends RecyclerView.ViewHolder {

		public ViewEightViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}
}
