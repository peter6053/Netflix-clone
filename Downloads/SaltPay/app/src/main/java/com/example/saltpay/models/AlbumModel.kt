package com.example.saltpay.models

import android.os.Parcel
import android.os.Parcelable
import androidx.annotation.NonNull
import androidx.room.Entity
import androidx.room.PrimaryKey
import java.io.Serializable

@Entity(tableName = "favourites")
data class AlbumModel(
    var authorName: String?,
    var authorURI: String?,
    var albumImage: String?,
    var albumCount: String?,
    var albumPrice: String?,
    var albumRights: String?,
    var albumTitle:String?,
    var albumLink: String?,
    var albumID: String?,
    var albumArtist:String?,
    var albumCategory:String?,
    var releaseDate:String?,
    @PrimaryKey(autoGenerate = true) var id: Int? = null) : Serializable