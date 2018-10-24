/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.*;
import android.support.constraint.ConstraintLayout;
import android.view.LayoutInflater;
import io.supernova.spacebook.R;
import android.widget.TextView;
import android.view.View;
import android.widget.ImageView;


public class MessagesActivityMessagesRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int MESSAGE_VIEW_HOLDER_VIEW_TYPE = 1;
    public static final int MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE = 2;
    public static final int MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE = 3;
    public static final int MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE = 4;
    public static final int MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE = 5;
    public static final int MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE = 6;
    
    public static final List<Integer> MOCK_DATA = Arrays.asList(MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE, MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE, MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE);
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
    
        switch (viewType) {
            case MESSAGE_VIEW_HOLDER_VIEW_TYPE: 
                return new MessageViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_view_holder, parent, false));
            case MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE: 
                return new MessageTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_two_view_holder, parent, false));
            case MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE: 
                return new MessageThreeViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_three_view_holder, parent, false));
            case MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE: 
                return new MessageFourViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_four_view_holder, parent, false));
            case MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE: 
                return new MessageFiveViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_five_view_holder, parent, false));
            case MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE: 
                return new MessageSixViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.message_six_view_holder, parent, false));
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
    
    
    public static class MessageViewHolder extends RecyclerView.ViewHolder {
        public MessageViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class MessageTwoViewHolder extends RecyclerView.ViewHolder {
        public MessageTwoViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class MessageThreeViewHolder extends RecyclerView.ViewHolder {
        public MessageThreeViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class MessageFourViewHolder extends RecyclerView.ViewHolder {
        public MessageFourViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class MessageFiveViewHolder extends RecyclerView.ViewHolder {
        public MessageFiveViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
    
    
    public static class MessageSixViewHolder extends RecyclerView.ViewHolder {
        public MessageSixViewHolder(View itemView) {
            super(itemView);
            init();
        }
        public void init() {
        
        }
    }
}




