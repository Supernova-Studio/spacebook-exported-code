/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.*;
import android.text.Spannable;
import android.view.LayoutInflater;
import android.text.style.ForegroundColorSpan;
import io.supernova.spacebook.R;
import android.text.style.RelativeSizeSpan;
import android.widget.TextView;
import android.view.View;
import android.text.SpannableString;
import android.widget.ImageView;


public class ProfilePhotosActivityGalleryRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int TITLE_VIEW_HOLDER_VIEW_TYPE = 1;
    public static final int VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE = 2;
    public static final int VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE = 3;
    public static final int TITLE_TWO_VIEW_HOLDER_VIEW_TYPE = 4;
    public static final int VIEW_SIX_VIEW_HOLDER_VIEW_TYPE = 5;
    public static final int VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE = 6;
    public static final int VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE = 7;
    
    public static final List<Integer> MOCK_DATA = Arrays.asList(TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE, TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE, TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE);
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
    
        switch (viewType) {
            case TITLE_VIEW_HOLDER_VIEW_TYPE: 
                return new TitleViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.title_view_holder, parent, false));
            case VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE: 
                return new ViewFourViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_four_view_holder, parent, false));
            case VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE: 
                return new ViewFiveViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_five_view_holder, parent, false));
            case TITLE_TWO_VIEW_HOLDER_VIEW_TYPE: 
                return new TitleTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.title_two_view_holder, parent, false));
            case VIEW_SIX_VIEW_HOLDER_VIEW_TYPE: 
                return new ViewSixViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_six_view_holder, parent, false));
            case VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE: 
                return new ViewSevenViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_seven_view_holder, parent, false));
            case VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE: 
                return new ViewEightViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.view_eight_view_holder, parent, false));
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
    
    
    public static class TitleViewHolder extends RecyclerView.ViewHolder {
        private TextView todayTextView;
        public TitleViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
            // Configure Today component
            todayTextView = itemView.findViewById(R.id.today_text_view);
            SpannableString todayTextViewText = new SpannableString(itemView.getContext().getString(R.string.title_view_holder_today_text_view_text));
            todayTextView.setText(todayTextViewText);
        }
    }
    
    
    public static class ViewFourViewHolder extends RecyclerView.ViewHolder {
        public ViewFourViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class ViewFiveViewHolder extends RecyclerView.ViewHolder {
        public ViewFiveViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class TitleTwoViewHolder extends RecyclerView.ViewHolder {
        private TextView tomorrowTextView;
        public TitleTwoViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
            // Configure Tomorrow component
            tomorrowTextView = itemView.findViewById(R.id.tomorrow_text_view);
            SpannableString tomorrowTextViewText = new SpannableString(itemView.getContext().getString(R.string.title_two_view_holder_tomorrow_text_view_text));
            tomorrowTextView.setText(tomorrowTextViewText);
        }
    }
    
    
    public static class ViewSixViewHolder extends RecyclerView.ViewHolder {
        public ViewSixViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class ViewSevenViewHolder extends RecyclerView.ViewHolder {
        public ViewSevenViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class ViewEightViewHolder extends RecyclerView.ViewHolder {
        public ViewEightViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
}




