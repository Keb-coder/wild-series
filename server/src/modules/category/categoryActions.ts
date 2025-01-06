// Some data to make the trick
const categories = [
  {
    id: 1,
    name: "Comédie",
  },
  {
    id: 2,
    name: "Science-Fiction",
  },
];

// Declare the actions

import type { RequestHandler } from "express";

// Action to get all categories
const browse: RequestHandler = (req, res) => {
  res.json(categories);
};

// Action to get a single category by id
const read: RequestHandler = (req, res) => {
  const categoryId = Number.parseInt(req.params.id);
  const category = categories.find((cat) => cat.id === categoryId);

  if (category != null) {
    res.json(category);
  } else {
    res.status(404).send;
  }
};

// Export them to import them somewhere else
export default { browse, read };
