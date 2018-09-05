/*
 * ProfileActivityPhotosRecyclerViewAdapter
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


public class ProfileActivityPhotosRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int VIEW_VIEW_HOLDER_VIEW_TYPE = 1;
	private static final int VIEW_TWO_VIEW_HOLDER_VIEW_TYPE = 2;
	private static final int VIEW_THREE_VIEW_HOLDER_VIEW_TYPE = 3;
	private static final List<Integer> MOCK_DATA = Arrays.asList(VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE, VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE, VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {

		switch (viewType) {
			case VIEW_VIEW_HOLDER_VIEW_TYPE:

				return new ViewViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_view_holder, parent, false));
			case VIEW_TWO_VIEW_HOLDER_VIEW_TYPE:

				return new ViewTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_two_view_holder, parent, false));
			case VIEW_THREE_VIEW_HOLDER_VIEW_TYPE:

				return new ViewThreeViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_three_view_holder, parent, false));
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



	public static class ViewViewHolder extends RecyclerView.ViewHolder {

		public ViewViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}

		private void startProfilePhotosActivity() {

			itemView
					.getContext()
					.startActivity(ProfilePhotosActivity.newIntent(itemView.getContext()));
		}
	}



	public static class ViewTwoViewHolder extends RecyclerView.ViewHolder {

		public ViewTwoViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}



	public static class ViewThreeViewHolder extends RecyclerView.ViewHolder {

		public ViewThreeViewHolder(View itemView) {
			super(itemView);


			init();
		}

		private void init() {

			
			// Additional item ViewHolder initialization code can go here.
		}
	}
}
