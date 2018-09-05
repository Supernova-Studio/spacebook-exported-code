/*
 * MessagesActivityMessagesRecyclerViewAdapter
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


public class MessagesActivityMessagesRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int MESSAGE_VIEW_HOLDER_VIEW_TYPE = 1;
	private static final int MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE = 2;
	private static final int MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE = 3;
	private static final int MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE = 4;
	private static final int MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE = 5;
	private static final int MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE = 6;
	private static final List<Integer> MOCK_DATA = Arrays.asList(MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE, MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE, MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

		switch (viewType) {
			case MESSAGE_VIEW_HOLDER_VIEW_TYPE:

				return new MessageViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_view_holder, parent, false));
			case MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE:

				return new MessageTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_two_view_holder, parent, false));
			case MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE:

				return new MessageThreeViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_three_view_holder, parent, false));
			case MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE:

				return new MessageFourViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_four_view_holder, parent, false));
			case MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE:

				return new MessageFiveViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_five_view_holder, parent, false));
			case MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE:

				return new MessageSixViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_six_view_holder, parent, false));
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
		return 18;
	}

	@Override
	public int getItemViewType(int position) {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.
		return MOCK_DATA.get(position);
	}



	public static class MessageViewHolder extends RecyclerView.ViewHolder {

		public MessageViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class MessageTwoViewHolder extends RecyclerView.ViewHolder {

		public MessageTwoViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class MessageThreeViewHolder extends RecyclerView.ViewHolder {

		public MessageThreeViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class MessageFourViewHolder extends RecyclerView.ViewHolder {

		public MessageFourViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class MessageFiveViewHolder extends RecyclerView.ViewHolder {

		public MessageFiveViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class MessageSixViewHolder extends RecyclerView.ViewHolder {

		public MessageSixViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}
}
