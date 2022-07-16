package com.example.saltpay.room

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.sqlite.db.SupportSQLiteDatabase
import com.example.saltpay.models.AlbumModel

@Database(entities = [AlbumModel::class], version = 1)
abstract class SaltDatabase : RoomDatabase() {
    abstract fun albumDao(): AlbumDao

    companion object {
        private var instance: SaltDatabase? = null

        @Synchronized
        fun getInstance(ctx: Context): SaltDatabase {
            if(instance == null)
                instance = Room.databaseBuilder(ctx.applicationContext, SaltDatabase::class.java,
                    "salt_database")
                    .fallbackToDestructiveMigration()
                    .addCallback(roomCallback)
                    .build()

            return instance!!

        }

        private val roomCallback = object : Callback() {
            override fun onCreate(db: SupportSQLiteDatabase) {
                super.onCreate(db)
            }
        }
    }

}