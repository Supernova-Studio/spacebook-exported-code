package com.example.project;

import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.support.v7.widget.RecyclerView;
import java.util.*;
import com.example.project.R;

/**
 *  Created by [Author].
 */
public class ProfileVCCollectionViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int VIEW_CELL_VIEW_TYPE = 1;
	private static final List<Integer> MOCK_DATA = Arrays.asList(VIEW_CELL_VIEW_TYPE, VIEW_CELL_VIEW_TYPE, VIEW_CELL_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		switch(viewType) {
			case VIEW_CELL_VIEW_TYPE:
				return new ViewCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_cell, parent, false));
		}
		
		throw new RuntimeException("Unsupported view type");
	}

	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {

	}

	@Override
	public int getItemCount() {
		return 3;
	}

	@Override
	public int getItemViewType(int position) {
		return MOCK_DATA.get(position);
	}

	public static class ViewCellViewHolder extends RecyclerView.ViewHolder {

		public ViewCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {
			itemView.setOnClickListener(view -> {
				onViewCellClicked();
			});
		}

		private void onViewCellClicked() {
			this.startProfilePhotosVC();
		}

		private void startProfilePhotosVC() {
			itemView.getContext().startActivity(ProfilePhotosVC.newIntent(itemView.getContext()));
		}
	}
}