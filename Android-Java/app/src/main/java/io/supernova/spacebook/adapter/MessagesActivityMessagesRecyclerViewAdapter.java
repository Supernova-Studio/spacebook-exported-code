/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.adapter;

import java.util.*;
import io.supernova.spacebook.databinding.MessageViewHolderBinding;
import android.view.View;
import io.supernova.spacebook.databinding.MessageFiveViewHolderBinding;
import io.supernova.spacebook.databinding.MessageTwoViewHolderBinding;
import android.support.v7.widget.RecyclerView;
import io.supernova.spacebook.databinding.MessageFourViewHolderBinding;
import android.view.LayoutInflater;
import io.supernova.spacebook.databinding.MessageThreeViewHolderBinding;
import io.supernova.spacebook.R;
import io.supernova.spacebook.databinding.MessageSixViewHolderBinding;
import android.view.ViewGroup;
import android.databinding.DataBindingUtil;


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
		private MessageViewHolderBinding binding;
		public MessageViewHolder(View itemView) {
			super(itemView);
			binding = MessageViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class MessageTwoViewHolder extends RecyclerView.ViewHolder {
		private MessageTwoViewHolderBinding binding;
		public MessageTwoViewHolder(View itemView) {
			super(itemView);
			binding = MessageTwoViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class MessageThreeViewHolder extends RecyclerView.ViewHolder {
		private MessageThreeViewHolderBinding binding;
		public MessageThreeViewHolder(View itemView) {
			super(itemView);
			binding = MessageThreeViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class MessageFourViewHolder extends RecyclerView.ViewHolder {
		private MessageFourViewHolderBinding binding;
		public MessageFourViewHolder(View itemView) {
			super(itemView);
			binding = MessageFourViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class MessageFiveViewHolder extends RecyclerView.ViewHolder {
		private MessageFiveViewHolderBinding binding;
		public MessageFiveViewHolder(View itemView) {
			super(itemView);
			binding = MessageFiveViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class MessageSixViewHolder extends RecyclerView.ViewHolder {
		private MessageSixViewHolderBinding binding;
		public MessageSixViewHolder(View itemView) {
			super(itemView);
			binding = MessageSixViewHolderBinding.bind(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
}
