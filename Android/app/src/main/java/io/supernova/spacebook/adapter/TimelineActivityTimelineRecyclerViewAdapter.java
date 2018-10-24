/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.adapter;

import android.view.ViewGroup;
import android.text.style.ForegroundColorSpan;
import io.supernova.spacebook.R;
import android.text.SpannableString;
import java.util.*;
import android.support.constraint.ConstraintLayout;
import android.text.Spannable;
import android.view.LayoutInflater;
import android.view.View;
import android.text.style.RelativeSizeSpan;
import android.widget.ImageView;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;


public class TimelineActivityTimelineRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int NEWS_VIEW_HOLDER_VIEW_TYPE = 1;
    public static final int LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE = 2;
    public static final int NEWS_TWO_VIEW_HOLDER_VIEW_TYPE = 3;
    public static final int EVENT_VIEW_HOLDER_VIEW_TYPE = 4;
    public static final int ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE = 5;
    
    public static final List<Integer> MOCK_DATA = Arrays.asList(NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE);
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
    
        switch (viewType) {
            case NEWS_VIEW_HOLDER_VIEW_TYPE: 
                return new NewsViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.news_view_holder, parent, false));
            case LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE: 
                return new LifetimeEventViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.lifetime_event_view_holder, parent, false));
            case NEWS_TWO_VIEW_HOLDER_VIEW_TYPE: 
                return new NewsTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.news_two_view_holder, parent, false));
            case EVENT_VIEW_HOLDER_VIEW_TYPE: 
                return new EventViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.event_view_holder, parent, false));
            case ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE: 
                return new AdvertisementViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.advertisement_view_holder, parent, false));
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
    
    
    public static class NewsViewHolder extends RecyclerView.ViewHolder {
        private TextView melonHuskLaunchesTextView;
        public NewsViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
            // Configure Melon Husk launches component
            melonHuskLaunchesTextView = itemView.findViewById(R.id.melon_husk_launches_text_view);
            SpannableString melonHuskLaunchesTextViewText = new SpannableString(itemView.getContext().getString(R.string.news_view_holder_melon_husk_launches_text_view_text));
            melonHuskLaunchesTextView.setText(melonHuskLaunchesTextViewText);
        }
    }
    
    
    public static class LifetimeEventViewHolder extends RecyclerView.ViewHolder {
        public LifetimeEventViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class NewsTwoViewHolder extends RecyclerView.ViewHolder {
        private TextView raidersFromTheGemTextView;
        public NewsTwoViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
            // Configure Raiders from the Gem component
            raidersFromTheGemTextView = itemView.findViewById(R.id.raiders_from_the_gem_text_view);
            SpannableString raidersFromTheGemTextViewText = new SpannableString(itemView.getContext().getString(R.string.news_two_view_holder_raiders_from_the_gem_text_view_text));
            raidersFromTheGemTextView.setText(raidersFromTheGemTextViewText);
        }
    }
    
    
    public static class EventViewHolder extends RecyclerView.ViewHolder {
        private TextView guessWhoSBackTextView;
        public EventViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
            // Configure Guess who’s back? component
            guessWhoSBackTextView = itemView.findViewById(R.id.guess_who_sback_text_view);
            SpannableString guessWhoSbackTextViewText = new SpannableString(itemView.getContext().getString(R.string.event_view_holder_guess_who_sback_text_view_text));
            guessWhoSBackTextView.setText(guessWhoSbackTextViewText);
        }
    }
    
    
    public static class AdvertisementViewHolder extends RecyclerView.ViewHolder {
        private TextView sprayAndPrayTextView;
        public AdvertisementViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
            // Configure Spray and Pray component
            sprayAndPrayTextView = itemView.findViewById(R.id.spray_and_pray_text_view);
            SpannableString sprayAndPrayTextViewText = new SpannableString(itemView.getContext().getString(R.string.advertisement_view_holder_spray_and_pray_text_view_text));
            sprayAndPrayTextView.setText(sprayAndPrayTextViewText);
        }
    }
}




