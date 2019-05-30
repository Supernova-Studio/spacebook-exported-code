/**
 * Created by Supernova.
 */

package io.supernova.spacebook.adapter

import io.supernova.spacebook.databinding.ViewTwoViewHolderBinding
import java.util.*
import android.view.LayoutInflater
import io.supernova.spacebook.databinding.ViewThreeViewHolderBinding
import android.view.ViewGroup
import android.databinding.DataBindingUtil
import android.view.View
import io.supernova.spacebook.R
import io.supernova.spacebook.databinding.ViewViewHolderBinding
import android.support.v7.widget.RecyclerView


class ProfileActivityPhotosRecyclerViewAdapter: RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {
		val VIEW_VIEW_HOLDER_VIEW_TYPE = 1
		val VIEW_TWO_VIEW_HOLDER_VIEW_TYPE = 2
		val VIEW_THREE_VIEW_HOLDER_VIEW_TYPE = 3
		
		val MOCK_DATA = listOf(VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE, VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE, VIEW_VIEW_HOLDER_VIEW_TYPE, VIEW_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_THREE_VIEW_HOLDER_VIEW_TYPE)
	}
	
	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
	
		when (viewType) {
			VIEW_VIEW_HOLDER_VIEW_TYPE -> {
				return ViewViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_view_holder, parent, false))
			}
			VIEW_TWO_VIEW_HOLDER_VIEW_TYPE -> {
				return ViewTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_two_view_holder, parent, false))
			}
			VIEW_THREE_VIEW_HOLDER_VIEW_TYPE -> {
				return ViewThreeViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_three_view_holder, parent, false))
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
	
	
	class ViewViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: ViewViewHolderBinding
		init {
			binding = ViewViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class ViewTwoViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: ViewTwoViewHolderBinding
		init {
			binding = ViewTwoViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class ViewThreeViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: ViewThreeViewHolderBinding
		init {
			binding = ViewThreeViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
}
