/*
 * MessagesActivityOnlineRecyclerViewAdapter
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


public class MessagesActivityOnlineRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE = 1;
	private static final int ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE = 2;
	private static final int ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE = 3;
	private static final List<Integer> MOCK_DATA = Arrays.asList(ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

		switch (viewType) {
			case ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE:

				return new OnlinePersonViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.online_person_view_holder, parent, false));
			case ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE:

				return new OnlinePersonTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.online_person_two_view_holder, parent, false));
			case ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE:

				return new OnlinePersonThreeViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.online_person_three_view_holder, parent, false));
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
		return 9;
	}

	@Override
	public int getItemViewType(int position) {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.
		return MOCK_DATA.get(position);
	}



	public static class OnlinePersonViewHolder extends RecyclerView.ViewHolder {

		public OnlinePersonViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class OnlinePersonTwoViewHolder extends RecyclerView.ViewHolder {

		public OnlinePersonTwoViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class OnlinePersonThreeViewHolder extends RecyclerView.ViewHolder {

		public OnlinePersonThreeViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}
}
