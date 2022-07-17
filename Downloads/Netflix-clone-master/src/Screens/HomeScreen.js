import React from "react";
import Banner from "../Banner";

import "./HomeScreen.css";
import Nav from "../Nav";
import requests from "../Request";
import Row from "../Row";




function HomeScreen() {
    return (
        <div className="homescrceen">

            <Nav />
            <Banner />
            <Row
                title='NETFLIX ORIGINAL'
                fetchUrl={requests.fetchNetflixOriginals}
                isLargeRow
            />
            <Row
                title="Trending Now"
                fetchUrl={requests.fetchTrending}
            />
            <Row
                title="Action Movies"
                fetchUrl={requests.fetchActionMovies}
            />
            <Row
                tittle="Commedy Movies"
                fetchUrl={requests.fetchCommedyMovies}
            />

             <Row
                title="Horror Movies"
                fetchUrl={requests.fetchHorrorMovies}
            />
             <Row
                title="Romance movies"
                fetchUrl={requests.fetchRomanceMovies}
            />
            <Row
                title="Fetch Documentaries"
                fetchUrl={requests.fectchDocumentaries}
            />




        </div>
    )




}
export default HomeScreen;






