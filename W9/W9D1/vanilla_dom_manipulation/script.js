document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const favoriteInput = document.querySelector(".favorite-input");
  
  const newListLi = document.createElement("li");
  newListLi.textContent = favorite;




  // adding new photos

  // --- your code here!



});
