import connection from "../utils/mysql.js";

const getItems = async (_req, res) => {
  const sql = "SELECT * FROM todo_items";

  try {
    const [results] = await connection.query(sql);

    if (!results.length) {
      return res.status(404).json({ message: "No item listed in DB" });
    }

    res.json(results);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

const getItemsByCategory = async (req, res) => {
  const { category_id } = req.query;

  if (!category_id) {
    return res.status(400).json({ message: "Category is required" });
  }

  const sql = `
    SELECT 
      ti.name, 
      ti.description, 
      ti.length, 
      tc.title AS category_name 
    FROM 
      todo_items AS ti 
    JOIN 
      todo_categories AS tc 
    ON 
      ti.category_id = tc.id 
    WHERE 
      tc.title = ?
  `;

  try {
    const [results] = await connection.query(sql, [category]);

    if (!results.length) {
      return res
        .status(404)
        .json({ message: "No items found for the specified category" });
    }

    res.json(results);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export { getItems, getItemsByCategory };
