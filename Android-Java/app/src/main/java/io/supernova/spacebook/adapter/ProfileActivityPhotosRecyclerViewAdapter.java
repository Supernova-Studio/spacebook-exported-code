/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.*;
import android.view.LayoutInflater;
import io.supernova.spacebook.R;
import android.view.View;
import android.widget.ImageView;


public class ProfileActivityPhotosRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int VIEW_VIEW_HOLDER_VIEW_TYPE = 1;
    public static final int VIEW_TWO_VIEW_HOLDER_VIEW_TYPE = 2;
    public static final int VIEW_THREE_VIEW_HOLDER_VIEW_TYPE = 3;
    
    public static final List<Integer> MOCK_DATA = Arrays.asList(VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE, VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE, VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE);
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
    public int getItemViewType(int position) {
    
        return MOCK_DATA.get(position);
    }
    @Override
    public int getItemCount() {
    
        return MOCK_DATA.size();
    }
    
    
    public static class ViewViewHolder extends RecyclerView.ViewHolder {
        public ViewViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class ViewTwoViewHolder extends RecyclerView.ViewHolder {
        public ViewTwoViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class ViewThreeViewHolder extends RecyclerView.ViewHolder {
        public ViewThreeViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
}




