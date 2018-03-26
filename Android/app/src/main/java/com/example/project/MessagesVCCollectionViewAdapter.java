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
public class MessagesVCCollectionViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int ONLINE_PERSON_CELL_VIEW_TYPE = 1;
	private static final List<Integer> MOCK_DATA = Arrays.asList(ONLINE_PERSON_CELL_VIEW_TYPE, ONLINE_PERSON_CELL_VIEW_TYPE, ONLINE_PERSON_CELL_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		switch(viewType) {
			case ONLINE_PERSON_CELL_VIEW_TYPE:
				return new OnlinePersonCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.online_person_cell, parent, false));
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

	public static class OnlinePersonCellViewHolder extends RecyclerView.ViewHolder {

		private TextView mrsDoyaLabel;

		public OnlinePersonCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {
			mrsDoyaLabel = itemView.findViewById(R.id.mrs_doya_label);
		}
	}
}