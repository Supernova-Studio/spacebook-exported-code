/*
 * TimelineVCActivityTimelineRecyclerViewAdapter
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


class TimelineVCActivityTimelineRecyclerViewAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {

		private val Q_NERP_MXRFO_CELL_VIEW_TYPE = 1
		private val PK_XT_LWSF_RQ_CELL_VIEW_TYPE = 2
		private val ZU_SU_VBA_MLL_CELL_VIEW_TYPE = 3
		private val ZP_IGTD_WL_OK_CELL_VIEW_TYPE = 4
		private val MOCK_DATA = listOf(Q_NERP_MXRFO_CELL_VIEW_TYPE, PK_XT_LWSF_RQ_CELL_VIEW_TYPE, ZU_SU_VBA_MLL_CELL_VIEW_TYPE, ZP_IGTD_WL_OK_CELL_VIEW_TYPE, Q_NERP_MXRFO_CELL_VIEW_TYPE, PK_XT_LWSF_RQ_CELL_VIEW_TYPE, ZU_SU_VBA_MLL_CELL_VIEW_TYPE, ZP_IGTD_WL_OK_CELL_VIEW_TYPE, Q_NERP_MXRFO_CELL_VIEW_TYPE, PK_XT_LWSF_RQ_CELL_VIEW_TYPE, ZU_SU_VBA_MLL_CELL_VIEW_TYPE, ZP_IGTD_WL_OK_CELL_VIEW_TYPE)
	}


	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {

		when(viewType) {
			Q_NERP_MXRFO_CELL_VIEW_TYPE -> return qNErpMxrfo_CellViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.q_nerp_mxrfo_cell, parent, false))
			PK_XT_LWSF_RQ_CELL_VIEW_TYPE -> return pkXtLWSfRq_CellViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.pk_xt_lwsf_rq_cell, parent, false))
			ZP_IGTD_WL_OK_CELL_VIEW_TYPE -> return ZpIGtdWlOk_CellViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.zp_igtd_wl_ok_cell, parent, false))
			ZU_SU_VBA_MLL_CELL_VIEW_TYPE -> return ZuSuVBaMLl_CellViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.zu_su_vba_mll_cell, parent, false))
		}
		
		throw RuntimeException("Unsupported view type")
	}


	override fun onBindViewHolder(viewHolder: RecyclerView.ViewHolder, position: Int) {

		// Here you can bind RecyclerView item data.

	}


	override fun getItemCount(): Int {

		// Defines number of items in RecyclerView.

		return 12
	}


	override fun getItemViewType(position: Int): Int {

		// Defines item type of the item. You will get the returned value in onCreateViewHolder method.

		return MOCK_DATA.get(position)
	}


	class qNErpMxrfo_CellViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {
			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.

		}
	}



	class pkXtLWSfRq_CellViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {
			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.

		}
	}



	class ZuSuVBaMLl_CellViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {
			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.

		}


		private fun startEventDetailVCActivity() {

			itemView.getContext().startActivity(EventDetailVCActivity.newIntent(itemView.getContext()))
		}
	}



	class ZpIGtdWlOk_CellViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

		init {
			init()
		}

		private fun init() {

			
			// Additional item ViewHolder initialization code can go here.

		}
	}

}

