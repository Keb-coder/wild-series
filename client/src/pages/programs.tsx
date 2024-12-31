import { useEffect, useState } from "react";
interface Serie {
  id: number;
  title: string;
  poster: string;
}
function Programs() {
  const [series, setSeries] = useState<Serie[]>([]);
  useEffect(() => {
    fetch("http://localhost:3310/api/programs/")
      .then((res) => res.json())
      .then((data) => setSeries(data))
      .catch((error) => console.error(error));
  }, []);
  return (
    <>
      {series.map((serie) => (
        <figure key={serie.id}>
          <figcaption>{serie.title}</figcaption>
          <img src={serie.poster} alt={serie.title} />
        </figure>
      ))}
    </>
  );
}
export default Programs;
