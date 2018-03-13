package com.example.project;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.support.v7.widget.RecyclerView;
import com.example.project.R;


// ----- Implementation ------

public class ProfileVCCollectionViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {


	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		return new ViewCellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_cell, parent, false));
	}

	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {

	}

	@Override
	public int getItemCount() {
		return 10;
	}

	public static class ViewCellViewHolder extends RecyclerView.ViewHolder {


		public ViewCellViewHolder(View itemView) {
			super(itemView);

			this.init();
		}

		public void init() {
			itemView.setOnClickListener(view -> {
				onViewCellClicked();
			});
		}

		public void onViewCellClicked() {
			this.startProfilePhotosVC();
		}

		public void startProfilePhotosVC() {
			itemView.getContext().startActivity(ProfilePhotosVC.newIntent(itemView.getContext()));
		}
	}

}
