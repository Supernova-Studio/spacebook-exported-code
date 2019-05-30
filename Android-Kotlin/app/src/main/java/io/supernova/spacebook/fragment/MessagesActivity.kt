/**
 * Created by Supernova.
 */

package io.supernova.spacebook.fragment

import io.supernova.spacebook.activity.*
import io.supernova.spacebook.databinding.MessagesActivityBinding
import io.supernova.spacebook.adapter.MessagesActivityMessagesRecyclerViewAdapter
import android.os.Bundle
import android.view.View
import android.databinding.DataBindingUtil
import android.support.v7.widget.LinearLayoutManager
import android.view.LayoutInflater
import android.support.v7.widget.GridLayoutManager
import java.util.*
import io.supernova.uitoolkit.recycler.GridSpacingItemDecoration
import android.support.v7.app.AppCompatActivity
import io.supernova.spacebook.R
import android.support.v4.app.Fragment
import io.supernova.spacebook.adapter.MessagesActivityOnlineRecyclerViewAdapter
import android.view.ViewGroup


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
	
	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
	
		super.onViewCreated(view, savedInstanceState)
		init()
	}
	
	fun init() {
	
		// Configure Online component
		binding.onlineRecyclerView.layoutManager = GridLayoutManager(this.context!!, 1, LinearLayoutManager.HORIZONTAL, false)
		binding.onlineRecyclerView.adapter = MessagesActivityOnlineRecyclerViewAdapter()
		binding.onlineRecyclerView.addItemDecoration(GridSpacingItemDecoration(this.context!!.resources.getDimension(R.dimen.messages_activity_online_recycler_view_spacing)))
		
		// Configure Messages component
		binding.messagesRecyclerView.layoutManager = LinearLayoutManager(this.context!!, LinearLayoutManager.VERTICAL, false)
		binding.messagesRecyclerView.adapter = MessagesActivityMessagesRecyclerViewAdapter()
	}
}
