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

export { getItems };
