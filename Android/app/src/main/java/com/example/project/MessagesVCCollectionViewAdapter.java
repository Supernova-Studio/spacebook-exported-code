package com.example.project;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.support.v7.widget.RecyclerView;
import com.example.project.R;
import android.widget.TextView;


// ----- Implementation ------

public class MessagesVCCollectionViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {


	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		return new OnlinePersonCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.online_person_cell, parent, false));
	}

	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {

	}

	@Override
	public int getItemCount() {
		return 10;
	}

	public static class OnlinePersonCellViewHolder extends RecyclerView.ViewHolder {

		private TextView mrsDoyaLabel;
		public OnlinePersonCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		public void init() {
			mrsDoyaLabel = itemView.findViewById(R.id.mrs_doya_label);
		}


	}

}
