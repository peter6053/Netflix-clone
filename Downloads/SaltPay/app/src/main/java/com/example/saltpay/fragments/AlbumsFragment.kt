package com.example.saltpay.fragments

import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.android.volley.Request
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.saltpay.AlbumAdapter
import com.example.saltpay.databinding.FragmentAlbumsBinding
import com.example.saltpay.models.AlbumModel
import org.json.JSONArray
import org.json.JSONObject

class AlbumsFragment : Fragment() {

    private var _binding: FragmentAlbumsBinding? = null
    private val binding get() = _binding!!
    lateinit var albumList:ArrayList<AlbumModel>
    lateinit var adapter:AlbumAdapter

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        _binding = FragmentAlbumsBinding.inflate(inflater, container, false)
        val root: View = binding.root
        albumList = ArrayList()
        adapter = context?.let { AlbumAdapter(albumList, it) }!!
        binding.albumsRV.adapter = adapter;
        LoadData()
        binding.edSearch.addTextChangedListener(textWatcher)
        return root
    }

    private val textWatcher = object : TextWatcher {
        override fun afterTextChanged(s: Editable?) {
            adapter.filter.filter(s.toString())
        }
        override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {
        }
        override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {

        }
    }

    private fun LoadData() {
        val queue = Volley.newRequestQueue(context)
        val url = "https://itunes.apple.com/us/rss/topalbums/limit=100/json"
        val stringRequest = StringRequest(
            Request.Method.GET, url,
            { response ->
                val feed:JSONObject = JSONObject(response).getJSONObject("feed")
                val author:JSONObject = feed.getJSONObject("author")
                val authorName:String = author.getJSONObject("name").getString("label")
                val authorURI:String = author.getJSONObject("uri").getString("label")
                val entries:JSONArray = feed.getJSONArray("entry")
                (0 until entries.length()).forEach {
                    val imageJA:JSONArray = entries.getJSONObject(it).getJSONArray("im:image")
                    val imageJO:JSONObject = imageJA.get(2) as JSONObject
                    val image:String = imageJO.getString("label")
                    val count:String = entries.getJSONObject(it).getJSONObject("im:itemCount").getString("label")
                    val price:String = entries.getJSONObject(it).getJSONObject("im:price").getString("label")
                    val rights:String = entries.getJSONObject(it).getJSONObject("rights").getString("label")
                    val title:String = entries.getJSONObject(it).getJSONObject("title").getString("label")
                    val link:String = entries.getJSONObject(it).getJSONObject("link").getJSONObject("attributes").getString("href")
                    val id:String = entries.getJSONObject(it).getJSONObject("id").getJSONObject("attributes").getString("im:id")
                    val artist:String = entries.getJSONObject(it).getJSONObject("im:artist").getString("label")
                    val category:String = entries.getJSONObject(it).getJSONObject("category").getJSONObject("attributes").getString("label")
                    val rlDate:String = entries.getJSONObject(it).getJSONObject("im:releaseDate").getJSONObject("attributes").getString("label")
                    var model= AlbumModel(authorName,authorURI,image,count,price,rights,title,link,id,artist,category,rlDate)
                    albumList.add(model)
                    adapter.notifyItemInserted(albumList.size)
                }

                Log.e("Res", "$authorName $authorURI")
                Log.e("Res", entries.length().toString())


            },
            {
                it.message?.let { it1 -> Log.e("Error", it1) }
            })
        queue.add(stringRequest)
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}