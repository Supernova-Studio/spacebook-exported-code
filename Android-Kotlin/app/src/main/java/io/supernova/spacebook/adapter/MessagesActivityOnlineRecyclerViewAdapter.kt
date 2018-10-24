/**
 * Created by Supernova.
 */

package io.supernova.spacebook.adapter

import android.support.v7.widget.RecyclerView
import io.supernova.spacebook.databinding.OnlinePersonTwoViewHolderBinding
import android.view.ViewGroup
import java.util.*
import android.databinding.DataBindingUtil
import android.view.LayoutInflater
import io.supernova.spacebook.databinding.OnlinePersonViewHolderBinding
import io.supernova.spacebook.R
import io.supernova.spacebook.databinding.OnlinePersonThreeViewHolderBinding
import android.view.View


class MessagesActivityOnlineRecyclerViewAdapter: RecyclerView.Adapter<RecyclerView.ViewHolder>() {

    companion object {
        val ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE = 1
        val ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE = 2
        val ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE = 3
        
        val MOCK_DATA = listOf(ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE, ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE)
    }
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
    
        when (viewType) {
            ONLINE_PERSON_VIEW_HOLDER_VIEW_TYPE -> {
                return OnlinePersonViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.online_person_view_holder, parent, false))
            }
            ONLINE_PERSON_TWO_VIEW_HOLDER_VIEW_TYPE -> {
                return OnlinePersonTwoViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.online_person_two_view_holder, parent, false))
            }
            ONLINE_PERSON_THREE_VIEW_HOLDER_VIEW_TYPE -> {
                return OnlinePersonThreeViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.online_person_three_view_holder, parent, false))
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
    
    
    class OnlinePersonViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
    
        private lateinit var binding: OnlinePersonViewHolderBinding
        init {
            binding = OnlinePersonViewHolderBinding.bind(itemView)
            init()
        }
        fun init() {
        
        }
    }
    
    
    class OnlinePersonTwoViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
    
        private lateinit var binding: OnlinePersonTwoViewHolderBinding
        init {
            binding = OnlinePersonTwoViewHolderBinding.bind(itemView)
            init()
        }
        fun init() {
        
        }
    }
    
    
    class OnlinePersonThreeViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
    
        private lateinit var binding: OnlinePersonThreeViewHolderBinding
        init {
            binding = OnlinePersonThreeViewHolderBinding.bind(itemView)
            init()
        }
        fun init() {
        
        }
    }
}




