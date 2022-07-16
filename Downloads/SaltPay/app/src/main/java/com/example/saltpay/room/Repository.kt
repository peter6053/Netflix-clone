package com.example.saltpay.room

import android.app.Application
import com.example.saltpay.models.AlbumModel
import java.lang.Exception
import java.util.concurrent.Callable
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import kotlin.Throws

class Repository(application: Application) {
    private val dao: AlbumDao
    private val executorService: ExecutorService
    fun Insert(model: AlbumModel?): Long {
        return executorService.submit<Long>(ReturnLong(model)).get()
    }

    fun Retrieve(): List<AlbumModel>? {
        return try {
            executorService.submit<List<AlbumModel>>(ReturnFavouritesList()).get()
        } catch (e: Exception) {
            null
        }
    }

    fun isFavourite(id: String?): AlbumModel? {
        return executorService.submit<AlbumModel>(ReturnAlbumModel(id)).get()
    }



    fun DeleteSingle(model: AlbumModel?): Int {
        return try {
            executorService.submit<Int>(ReturnInt(model)).get()
        } catch (e: Exception) {
            0
        }
    }

    private inner class ReturnLong(var model: AlbumModel?) : Callable<Long?> {

        @Throws(Exception::class)
        override fun call(): Long? {
            return dao.insert(model)
        }
    }



    private inner class ReturnInt : Callable<Int> {
        var model: AlbumModel? = null

        constructor(userModel: AlbumModel?) {
            this.model = userModel
        }

        @Throws(Exception::class)
        override fun call(): Int? {
            return dao.delete(model)
        }
    }

    private inner class ReturnFavouritesList : Callable<List<AlbumModel>> {
        @Throws(Exception::class)
        override fun call(): List<AlbumModel> {
            return dao.getAll()
        }
    }

    private inner class ReturnAlbumModel(var id: String?) : Callable<AlbumModel> {
        @Throws(Exception::class)
        override fun call(): AlbumModel {
            return dao.get(id)
        }
    }

    init {
        val dataBase: SaltDatabase = SaltDatabase.getInstance(application.applicationContext)
        dao = dataBase.albumDao()
        executorService = Executors.newSingleThreadExecutor()
    }
}