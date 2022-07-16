
const API_KEY = "e42cba014cd1da61711ce3efc57851fc";

const requests =
{

    fetchTrending: '/trending/allweek?api_keys=${API_KEY}&languge=en-us',
    fetchNetflixOriginals: '/discover/tv?ap1_key=${API_KEY}&with_networks=213',
    fetchTopRates: '/movie/top_rated?api_key=${API_KEY}&languge=en-us',
    fetchActionMovies: '/discover/movie?api_key=${API_KEY}&with_genres=28',
    fetchCommedyMovies: '/discover/movie?api_key=${API_KEY}&with_genres=35',
    fetchHorrorMovies: '/discover/movie?api_key=${API_KEY}&with_genres=27',
    fetchRomanceMovies: '/discover/movie?api_key=${API_KEY}&with_genres=10749',
    fectchDocumentaries: '/discover/movie?api_key=${API_KEY}&with_genres=99',

}

export default requests;

