/**
 * Created by Supernova.
 */

package io.supernova.spacebook.adapter

import io.supernova.spacebook.databinding.MessageFourViewHolderBinding
import android.databinding.DataBindingUtil
import io.supernova.spacebook.databinding.MessageFiveViewHolderBinding
import io.supernova.spacebook.databinding.MessageViewHolderBinding
import android.view.View
import io.supernova.spacebook.databinding.MessageThreeViewHolderBinding
import android.view.ViewGroup
import android.view.LayoutInflater
import android.support.v7.widget.RecyclerView
import java.util.*
import io.supernova.spacebook.databinding.MessageTwoViewHolderBinding
import io.supernova.spacebook.R
import io.supernova.spacebook.databinding.MessageSixViewHolderBinding


class MessagesActivityMessagesRecyclerViewAdapter: RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {
		val MESSAGE_VIEW_HOLDER_VIEW_TYPE = 1
		val MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE = 2
		val MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE = 3
		val MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE = 4
		val MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE = 5
		val MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE = 6
		
		val MOCK_DATA = listOf(MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE, MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE, MESSAGE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE, MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE, MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE, MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE)
	}
	
	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
	
		when (viewType) {
			MESSAGE_VIEW_HOLDER_VIEW_TYPE -> {
				return MessageViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_view_holder, parent, false))
			}
			MESSAGE_TWO_VIEW_HOLDER_VIEW_TYPE -> {
				return MessageTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_two_view_holder, parent, false))
			}
			MESSAGE_THREE_VIEW_HOLDER_VIEW_TYPE -> {
				return MessageThreeViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_three_view_holder, parent, false))
			}
			MESSAGE_FOUR_VIEW_HOLDER_VIEW_TYPE -> {
				return MessageFourViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_four_view_holder, parent, false))
			}
			MESSAGE_FIVE_VIEW_HOLDER_VIEW_TYPE -> {
				return MessageFiveViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_five_view_holder, parent, false))
			}
			MESSAGE_SIX_VIEW_HOLDER_VIEW_TYPE -> {
				return MessageSixViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.message_six_view_holder, parent, false))
			}
		}
		
		throw RuntimeException("Unsupported view type")
	}
	
	override fun onBindViewHolder(viewHolder: RecyclerView.ViewHolder, position: Int) {
	
		// Here you can bind RecyclerView item data.
	}
	
	override fun getItemViewType(position: Int): Int {
	
		return MOCK_DATA.get(position)
	}
	
	override fun getItemCount(): Int {
	
		return MOCK_DATA.size
	}
	
	
	class MessageViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: MessageViewHolderBinding
		init {
			binding = MessageViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class MessageTwoViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: MessageTwoViewHolderBinding
		init {
			binding = MessageTwoViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class MessageThreeViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: MessageThreeViewHolderBinding
		init {
			binding = MessageThreeViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class MessageFourViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: MessageFourViewHolderBinding
		init {
			binding = MessageFourViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class MessageFiveViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: MessageFiveViewHolderBinding
		init {
			binding = MessageFiveViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class MessageSixViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: MessageSixViewHolderBinding
		init {
			binding = MessageSixViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
}
