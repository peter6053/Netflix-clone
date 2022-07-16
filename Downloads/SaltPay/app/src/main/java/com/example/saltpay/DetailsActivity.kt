package com.example.saltpay

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.bumptech.glide.Glide
import com.example.saltpay.databinding.ActivityDetailsBinding
import com.example.saltpay.models.AlbumModel
import com.example.saltpay.room.Repository

class DetailsActivity : AppCompatActivity() {
    private lateinit var binding: ActivityDetailsBinding
    private lateinit var repository: Repository
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDetailsBinding.inflate(layoutInflater)
        setContentView(binding.root)
        repository = Repository(application)

//        val albumModel = intent.getSerializableExtra("Model")
        val albumModel = intent.getSerializableExtra("Model") as? AlbumModel

        var model = repository.isFavourite(albumModel?.albumID)
        if (model != null) {
            albumModel?.id = model.id
            binding.btnFvrts.text = "Remove from Favourites"
        }

        Glide
            .with(this)
            .load(albumModel?.albumImage)
            .centerCrop()
            .placeholder(R.drawable.logo)
            .into(binding.albumImage);

        binding.albumName.text = albumModel!!.albumTitle
        binding.albumID.text = albumModel.albumID
        binding.authorName.text = albumModel.authorName
        binding.authorURI.text = albumModel.authorURI
        binding.authorURI.text = albumModel.authorURI
        binding.songsCount.text = albumModel.albumCount
        binding.price.text = albumModel.albumPrice
        binding.artist.text = albumModel.albumArtist
        binding.link.text = albumModel.albumLink
        binding.category.text = albumModel.albumCategory
        binding.release.text = albumModel.releaseDate
        binding.rights.text = albumModel.albumRights

        binding.btnFvrts.setOnClickListener() {
            if (model == null) {
                var id = repository.Insert(albumModel);
                if (id > 0) {
                    albumModel.id = id.toInt()
                    model = albumModel;
                    binding.btnFvrts.text = "Remove from favourites"
                } else {
                    binding.btnFvrts.text = "Error"
                }
            } else {
                if (repository.DeleteSingle(albumModel) > 0) {
                    binding.btnFvrts.text = "Add to favourites"
                    model = null
                }
            }


        }
    }
}
