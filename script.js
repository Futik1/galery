// function close_popup(){
//     document.querySelector("header").classList.remove("open");
// }

// document.querySelector("#grid").addEventListener("close", close_popup, false);

// document.querySelector("#show_add_photo").addEventListener("click", function(){
//     document.querySelector("#add_new_photo").classList.add("open");
// });

// document.querySelector("#cancel").addEventListener("click", function(){
//     document.querySelector("#add_new_photo").classList.remove("open");
// });

// document.querySelector("#add_photo").addEventListener("click", function(){
//     let src = document.querySelector("#new_photo_src").value;
//     let text = document.querySelector("#new_photo_text").value;
//     let new_photo_div = document.createElement("div");
//     new_photo_div.classList.add("photo");
//     let new_img = document.createElement("img");
//     new_img.src = src;
//     new_photo_div.append(new_img);
//     let new_p = document.createElement("p");
//     new_p.innerText = text;
//     new_photo_div.append(new_p);
//     document.querySelector("#grid").prepend(new_photo_div);
//     document.querySelector("#add_new_photo").classList.remove("open");
// });
// --------------------------------------------------------
document.querySelector("#show_add_photo").addEventListener("click", function(){
    document.querySelector("#add_new_photo").classList.add("open");
});

document.querySelector("#cancel").addEventListener("click", function(e){
    e.preventDefault();
    document.querySelector("#add_new_photo").classList.remove("open");
});

// function open_photo(){
//     let popup_photo = document.querySelector("#popup_photo");
//     popup_photo.querySelector("img").src = this.querySelector("img").src;
//     popup_photo.classList.add("open");
// }

// document.querySelectorAll(".photo").forEach(photo => {
//     photo.addEventListener("click", open_photo);
// });

// document.querySelector("#popup_photo").addEventListener("click", function(){
//     this.classList.remove("open");
// });