package com.example.saltpay.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.bumptech.glide.load.model.ModelLoader
import com.example.saltpay.AlbumAdapter
import com.example.saltpay.databinding.FragmentFavouritesBinding
import com.example.saltpay.models.AlbumModel
import com.example.saltpay.room.Repository

class FavouritesFragment : Fragment() {

    private var _binding: FragmentFavouritesBinding? = null
    private val binding get() = _binding!!

    lateinit var fvrtList:ArrayList<AlbumModel>
    lateinit var adapter:AlbumAdapter
    lateinit var repository: Repository

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentFavouritesBinding.inflate(inflater, container, false)
        val root: View = binding.root
        fvrtList = ArrayList()
        adapter = context?.let { AlbumAdapter(fvrtList, it) }!!
        binding.fvrtRV.adapter = adapter;
        return root
    }

    override fun onResume() {
        super.onResume()
        LoadData()
    }

    private fun LoadData() {
        repository = Repository(activity!!.application)
        fvrtList.clear()
        fvrtList.addAll(repository.Retrieve()!!)
        adapter.notifyDataSetChanged()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}