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
public class MessagesVCTableViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

	private static final int MESSAGE_CELL_VIEW_TYPE = 1;
	private static final List<Integer> MOCK_DATA = Arrays.asList(MESSAGE_CELL_VIEW_TYPE, MESSAGE_CELL_VIEW_TYPE, MESSAGE_CELL_VIEW_TYPE);
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		switch(viewType) {
			case MESSAGE_CELL_VIEW_TYPE:
				return new MessageCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_cell, parent, false));
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

	public static class MessageCellViewHolder extends RecyclerView.ViewHolder {

		private TextView theWaterSoTestyYLabel;
		private TextView nameLabel;

		public MessageCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		private void init() {
			theWaterSoTestyYLabel = itemView.findViewById(R.id.the_water_so_testy_ylabel);
			nameLabel = itemView.findViewById(R.id.name_label);
		}
	}
}