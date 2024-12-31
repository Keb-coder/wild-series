import { useEffect, useState } from "react";

export default function Programs() {
  const [programs, setPrograms] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3310/api/programs")
      .then((response) => response.json())
      .then((data) => setPrograms(data))
      .catch((error) => console.error("Error fetching programs:", error));
  }, []);

  return (
    <div>
      <h1>Liste des Séries</h1>
      <ul>
        {programs.map((program) => (
          <li key={program}>
            <h2>{program}</h2>
            <p>{program}</p>
            <img src={program} alt={`${program} poster`} />
            <p>Pays : {program}</p>
            <p>Année : {program}</p>
          </li>
        ))}
      </ul>
    </div>
  );
}
