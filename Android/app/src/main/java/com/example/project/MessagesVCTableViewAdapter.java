package com.example.project;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.support.v7.widget.RecyclerView;
import com.example.project.R;
import android.widget.TextView;


// ----- Implementation ------

public class MessagesVCTableViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {


	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		return new MessageCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_cell, parent, false));
	}

	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {

	}

	@Override
	public int getItemCount() {
		return 10;
	}

	public static class MessageCellViewHolder extends RecyclerView.ViewHolder {

		private TextView theWaterSoTestyYLabel;
		private TextView nameLabel;
		public MessageCellViewHolder(View itemView) {
			super(itemView);

			this.init();
		}

		public void init() {
			theWaterSoTestyYLabel = itemView.findViewById(R.id.the_water_so_testy_ylabel);
			nameLabel = itemView.findViewById(R.id.name_label);
		}


	}

}
