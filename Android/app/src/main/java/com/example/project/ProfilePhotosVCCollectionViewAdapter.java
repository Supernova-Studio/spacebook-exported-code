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
public class ProfilePhotosVCCollectionViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int TITLE_CELL_VIEW_TYPE = 1;
	private static final int VIEW_FOUR_CELL_VIEW_TYPE = 2;
	private static final List<Integer> MOCK_DATA = Arrays.asList(TITLE_CELL_VIEW_TYPE, VIEW_FOUR_CELL_VIEW_TYPE, TITLE_CELL_VIEW_TYPE, VIEW_FOUR_CELL_VIEW_TYPE, TITLE_CELL_VIEW_TYPE, VIEW_FOUR_CELL_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		switch(viewType) {
			case TITLE_CELL_VIEW_TYPE:
				return new TitleCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.title_cell, parent, false));
			case VIEW_FOUR_CELL_VIEW_TYPE:
				return new ViewFourCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_four_cell, parent, false));
		}
		
		throw new RuntimeException("Unsupported view type");
	}

	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {

	}

	@Override
	public int getItemCount() {
		return 6;
	}

	@Override
	public int getItemViewType(int position) {
		return MOCK_DATA.get(position);
	}

	public static class TitleCellViewHolder extends RecyclerView.ViewHolder {

		private TextView todayLabel;

		public TitleCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {
			todayLabel = itemView.findViewById(R.id.today_label);
		}
	}

	public static class ViewFourCellViewHolder extends RecyclerView.ViewHolder {

		public ViewFourCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {

		}
	}
}