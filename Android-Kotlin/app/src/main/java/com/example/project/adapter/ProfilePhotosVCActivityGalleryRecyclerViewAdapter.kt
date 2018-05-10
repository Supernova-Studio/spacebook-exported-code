/*
 * ProfilePhotosVCActivityGalleryRecyclerViewAdapter
 * Spacebook
 *
 * Created by [Author].
 * Copyright © 2018 Supernova. All rights reserved.
 */

package com.example.project.adapter

import android.view.View
import android.view.ViewGroup
import android.view.LayoutInflater
import com.example.project.R
import com.example.project.activity.*
import java.util.*
import android.support.v7.widget.RecyclerView


class ProfilePhotosVCActivityGalleryRecyclerViewAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {

		private val ZMXITWG_GPC_CELL_VIEW_TYPE = 1
		private val MT_KW_RNPZR_C_CELL_VIEW_TYPE = 2
		private val MOCK_DATA = listOf(ZMXITWG_GPC_CELL_VIEW_TYPE, MT_KW_RNPZR_C_CELL_VIEW_TYPE, ZMXITWG_GPC_CELL_VIEW_TYPE, MT_KW_RNPZR_C_CELL_VIEW_TYPE, ZMXITWG_GPC_CELL_VIEW_TYPE, MT_KW_RNPZR_C_CELL_VIEW_TYPE)
	}


	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {

		when(viewType) {
			MT_KW_RNPZR_C_CELL_VIEW_TYPE -> return MtKwRNpzrC_CellViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.mt_kw_rnpzr_c_cell, parent, false))
			ZMXITWG_GPC_CELL_VIEW_TYPE -> return ZMXITwgGpc_CellViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.zmxitwg_gpc_cell, parent, false))
		}
		
		throw RuntimeException("Unsupported view type")
	}


	override fun onBindViewHolder(viewHolder: RecyclerView.ViewHolder, position: Int) {

		// Here you can bind RecyclerView item data.

	}


	override fun getItemCount(): Int {

		// Defines number of items in RecyclerView.

		return 6
	}


	override fun getItemViewType(position: Int): Int {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.

		return MOCK_DATA.get(position)
	}


	class ZMXITwgGpc_CellViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {
			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.

		}
	}



	class MtKwRNpzrC_CellViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {
			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.

		}
	}

}

