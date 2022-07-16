package com.example.saltpay

import android.content.Context
import android.content.Intent
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.Filter
import android.widget.Filterable
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.example.saltpay.databinding.ItemAlbumBinding
import com.example.saltpay.models.AlbumModel

class AlbumAdapter(private val albumList: ArrayList<AlbumModel>, val context:Context) : RecyclerView.Adapter<AlbumAdapter.ViewHolder>(), Filterable {
    private var filterList:ArrayList<AlbumModel> = albumList
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        return ViewHolder(ItemAlbumBinding.inflate(LayoutInflater.from(parent.context),parent,false))
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bindHolder(filterList[position])
    }

    override fun getItemCount(): Int {
        return filterList.size
    }

    override fun getFilter(): Filter {
        return object : Filter() {
            override fun performFiltering(constraint: CharSequence?): FilterResults {
                val charString = constraint?.toString() ?: ""
                if (charString.isEmpty()) filterList = albumList else {
                    val filteredList = ArrayList<AlbumModel>()
                    albumList
                        .filter {
                            (it.albumTitle?.toLowerCase()?.contains(constraint!!)!!)
                        }
                        .forEach { filteredList.add(it) }
                    filterList = filteredList

                }
                return FilterResults().apply { values = filterList }
            }

            override fun publishResults(constraint: CharSequence?, results: FilterResults?) {

                filterList = if (results?.values == null)
                    ArrayList()
                else
                    results.values as ArrayList<AlbumModel>
                notifyDataSetChanged()
            }
        }
    }

    inner class ViewHolder(itemView: ItemAlbumBinding) : RecyclerView.ViewHolder(itemView.root) {
        private var binding : ItemAlbumBinding = itemView
        fun bindHolder(albumModel: AlbumModel) {
            binding.albumTitle.text = albumModel.albumTitle
            binding.txtArtist.text = albumModel.albumArtist
            Glide
                .with(context)
                .load(albumModel.albumImage)
                .centerCrop()
                .placeholder(R.drawable.logo)
                .into(binding.albumCover);

            itemView.rootView.setOnClickListener {
                val intent = Intent(context,DetailsActivity::class.java)
                intent.putExtra("Model",albumModel)
                context.startActivity(intent)
            }
        }

    }

}