import { useEffect, useState } from "react";
interface Categori {
  id: number;
  name: string;
}
function Category() {
  const [category, categorySeries] = useState<Categori[]>([]);
  useEffect(() => {
    fetch("http://localhost:3310/api/category/")
      .then((res) => res.json())
      .then((data) => categorySeries(data))
      .catch((error) => console.error(error));
  }, []);
  return (
    <>
      {category.map((cat) => (
        <figure key={cat.id}>
          <figcaption>{cat.name}</figcaption>
        </figure>
      ))}
    </>
  );
}
export default Category;
