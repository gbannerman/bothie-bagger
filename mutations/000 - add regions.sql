INSERT INTO region
SELECT *
FROM   json_populate_recordset(null::region,  -- use same table type
          json '
  [
    {
      "id": 1,
      "name": "Northern Highlands & Islands"
    },
    {
      "id": 2,
      "name": "North West Highlands & Islands"
    },
    {
      "id": 3,
      "name": "Western Highlands & Islands"
    },
    {
      "id": 4,
      "name": "South West Highlands & Islands"
    },
    {
      "id": 5,
      "name": "Central Highlands"
    },
    {
      "id": 6,
      "name": "Eastern Highlands"
    },
    {
      "id": 7,
      "name": "Southern Scotland"
    }
  ]');