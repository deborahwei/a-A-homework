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

  const handleFavoriteSubmit = (e) => {
    e.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input");
    const favorite = favoriteInput.value;
    favoriteInput.value = "";

    const newListLi = document.createElement("li");
    newListLi.textContent = favorite;

    const favoritesList = document.getElementById("sf-places");
    favoritesList.appendChild(newListLi);

  }

  const listSubmitButton = document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click", handleFavoriteSubmit);



  // adding new photos
  
  const addNewPhotos = (e) => { 
    const hiddenPhotoForm = document.querySelector(".photo-form-container");
    if (hiddenPhotoForm.className === "photo-form-container") {
      hiddenPhotoForm.className = 'photo-form-container hidden'
    }
    else { 
      hiddenPhotoForm.className = 'photo-form-container'
    }
  }

  const handlePhotoSubmit = (e) => { 
    e.preventDefault();

    const photoUrlInput = document.querySelector('photo-url-input')
    const photo = photoUrlInput.value
    photoUrlInput.value = ''

    const newImage = document.createElement('img')
    newImage.src = photo

    const newPhotoLi = document.createElement("li");
    newPhotoLi.appendChild(newImage);

    const photosList = document.querySelector("dog-photos");
    photosList.appendChild(newPhoto); 
  }

  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);


});
