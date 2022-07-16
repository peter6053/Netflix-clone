package com.example.saltpay.room

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.Query
import com.example.saltpay.models.AlbumModel

@Dao
interface AlbumDao {

    @Query("SELECT * FROM favourites")
    fun getAll(): List<AlbumModel>

    @Query("SELECT * FROM favourites WHERE albumID == :id")
    fun get(id: String?): AlbumModel

    @Insert
    fun insert(albumModel: AlbumModel?): Long

    @Delete
    fun delete(albumModel: AlbumModel?):Int



}