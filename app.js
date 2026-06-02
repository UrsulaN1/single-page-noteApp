
const input = document.getElementById("noteInput");
const list = document.getElementById("notesList");
const button = document.getElementById("addNote");

let notes = JSON.parse(localStorage.getItem("notes") || "[]");

function renderNotes() {
  list.innerHTML = "";
  notes.forEach((note, index) => {
    const li = document.createElement("li");
    li.textContent = note;
    list.appendChild(li);
  });
}

button.addEventListener("click", () => {
  const text = input.value.trim();
  if (!text) return;

  notes.push(text);
  localStorage.setItem("notes", JSON.stringify(notes));

  input.value = "";
  renderNotes();
});

renderNotes();
