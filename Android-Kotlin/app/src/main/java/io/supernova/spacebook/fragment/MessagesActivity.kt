/**
 * Created by Supernova.
 */

package io.supernova.spacebook.fragment

import android.view.ViewGroup
import io.supernova.spacebook.R
import io.supernova.spacebook.activity.*
import android.support.v7.widget.GridLayoutManager
import java.util.*
import io.supernova.spacebook.databinding.MessagesActivityBinding
import android.view.LayoutInflater
import android.view.View
import android.databinding.DataBindingUtil
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.LinearLayoutManager
import android.os.Bundle
import android.support.v4.app.Fragment
import io.supernova.spacebook.adapter.MessagesActivityOnlineRecyclerViewAdapter
import io.supernova.spacebook.adapter.MessagesActivityMessagesRecyclerViewAdapter


class MessagesActivity: Fragment() {

    companion object {
        fun newInstance(): MessagesActivity {
        
            val fragment = MessagesActivity()
            val arguments = Bundle()
            fragment.arguments = arguments
            return fragment
        }
    }
    
    private lateinit var binding: MessagesActivityBinding
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
    
        binding = DataBindingUtil.inflate(inflater, R.layout.messages_activity, container, false)
        return binding.root
    }
    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
    
        super.onViewCreated(view, savedInstanceState)
        init()
    }
    fun init() {
    
        // Configure Online component
        binding.onlineRecyclerView.layoutManager = GridLayoutManager(context, 1, LinearLayoutManager.HORIZONTAL, false)
        binding.onlineRecyclerView.adapter = MessagesActivityOnlineRecyclerViewAdapter()
        
        // Configure Messages component
        binding.messagesRecyclerView.layoutManager = LinearLayoutManager(context, LinearLayoutManager.VERTICAL, false)
        binding.messagesRecyclerView.adapter = MessagesActivityMessagesRecyclerViewAdapter()
    }
}




