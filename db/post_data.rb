def get_post_data
  post_data = {
    "post1" => {
                    author: "Rand al'Thor",
                    title: "The First Post",
                    body: "This the text body for the first post.",
                  },
    "post2" => {
                    author: "Egwene al'Vere",
                    title: "The Second Post",
                    body: "This the text body for the second post.",
                  },
    "post3" => {
                    author: "Matrim Cauthon",
                    title: "The First Post",
                    body: "This the text body for the third post.",
                  },
    "post4" => {
                    author: "Moiraine Damodred",
                    title: "The Fourth Post",
                    body: "This the text body for the fourth post.",
                  },
    "post5" => {
                    author: "Perrin Aybara",
                    title: "The Fifth Post",
                    body: "This the text body for the fifth post.",
                  }
    }
  return post_data
end
