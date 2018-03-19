package com.example.project;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.support.v7.widget.RecyclerView;
import com.example.project.R;
import android.widget.TextView;


// ----- Implementation ------

public class ProfilePhotosVCCollectionViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {


	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		return new TitleCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.title_cell, parent, false));
	}

	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {

	}

	@Override
	public int getItemCount() {
		return 10;
	}

	public static class TitleCellViewHolder extends RecyclerView.ViewHolder {

		private TextView todayLabel;
		public TitleCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		public void init() {
			todayLabel = itemView.findViewById(R.id.today_label);
		}


	}

	public static class ViewFourCellViewHolder extends RecyclerView.ViewHolder {


		public ViewFourCellViewHolder(View itemView) {
			super(itemView);

			init();
		}

		public void init() {

		}


	}

}
