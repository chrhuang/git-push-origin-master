const addMovie = () => {
  document.querySelector("#add-movie-button").addEventListener("click", (event) => {
    document.querySelector("#add-movie-form").style.display = "block";
    window.scrollTo(0, document.body.scrollHeight);
  })
}

export { addMovie };
