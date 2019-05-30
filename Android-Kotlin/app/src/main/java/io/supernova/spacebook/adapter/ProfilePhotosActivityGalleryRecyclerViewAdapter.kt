/**
 * Created by Supernova.
 */

package io.supernova.spacebook.adapter

import android.view.ViewGroup
import android.support.v7.widget.RecyclerView
import io.supernova.spacebook.databinding.TitleTwoViewHolderBinding
import java.util.*
import io.supernova.spacebook.databinding.ViewSevenViewHolderBinding
import io.supernova.spacebook.databinding.ViewSixViewHolderBinding
import io.supernova.spacebook.databinding.ViewFourViewHolderBinding
import io.supernova.spacebook.databinding.ViewEightViewHolderBinding
import io.supernova.spacebook.databinding.TitleViewHolderBinding
import io.supernova.spacebook.databinding.ViewFiveViewHolderBinding
import android.view.LayoutInflater
import io.supernova.spacebook.R
import android.databinding.DataBindingUtil
import android.view.View


class ProfilePhotosActivityGalleryRecyclerViewAdapter: RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {
		val TITLE_VIEW_HOLDER_VIEW_TYPE = 1
		val VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE = 2
		val VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE = 3
		val TITLE_TWO_VIEW_HOLDER_VIEW_TYPE = 4
		val VIEW_SIX_VIEW_HOLDER_VIEW_TYPE = 5
		val VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE = 6
		val VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE = 7
		
		val MOCK_DATA = listOf(TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE, TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE, TITLE_VIEW_HOLDER_VIEW_TYPE, VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE, VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE, TITLE_TWO_VIEW_HOLDER_VIEW_TYPE, VIEW_SIX_VIEW_HOLDER_VIEW_TYPE, VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE, VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE)
	}
	
	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
	
		when (viewType) {
			TITLE_VIEW_HOLDER_VIEW_TYPE -> {
				return TitleViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.title_view_holder, parent, false))
			}
			VIEW_FOUR_VIEW_HOLDER_VIEW_TYPE -> {
				return ViewFourViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_four_view_holder, parent, false))
			}
			VIEW_FIVE_VIEW_HOLDER_VIEW_TYPE -> {
				return ViewFiveViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_five_view_holder, parent, false))
			}
			TITLE_TWO_VIEW_HOLDER_VIEW_TYPE -> {
				return TitleTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.title_two_view_holder, parent, false))
			}
			VIEW_SIX_VIEW_HOLDER_VIEW_TYPE -> {
				return ViewSixViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_six_view_holder, parent, false))
			}
			VIEW_SEVEN_VIEW_HOLDER_VIEW_TYPE -> {
				return ViewSevenViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_seven_view_holder, parent, false))
			}
			VIEW_EIGHT_VIEW_HOLDER_VIEW_TYPE -> {
				return ViewEightViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.view_eight_view_holder, parent, false))
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
	
	
	class TitleViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: TitleViewHolderBinding
		init {
			binding = TitleViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class ViewFourViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: ViewFourViewHolderBinding
		init {
			binding = ViewFourViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class ViewFiveViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: ViewFiveViewHolderBinding
		init {
			binding = ViewFiveViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class TitleTwoViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: TitleTwoViewHolderBinding
		init {
			binding = TitleTwoViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class ViewSixViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: ViewSixViewHolderBinding
		init {
			binding = ViewSixViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class ViewSevenViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: ViewSevenViewHolderBinding
		init {
			binding = ViewSevenViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
	
	
	class ViewEightViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
	
		private lateinit var binding: ViewEightViewHolderBinding
		init {
			binding = ViewEightViewHolderBinding.bind(itemView)
			init()
		}
		
		fun init() {
		
		}
	}
}
