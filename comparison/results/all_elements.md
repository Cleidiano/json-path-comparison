## All elements

### Setup
Selector: `$..*`

    {
      "store": {
        "book": [
          {
            "category": "reference",
            "author": "Nigel Rees",
            "title": "Sayings of the Century",
            "price": 8.95
          },
          {
            "category": "fiction",
            "author": "Evelyn Waugh",
            "title": "Sword of Honour",
            "price": 12.99
          },
          {
            "category": "fiction",
            "author": "Herman Melville",
            "title": "Moby Dick",
            "isbn": "0-553-21311-3",
            "price": 8.99
          },
          {
            "category": "fiction",
            "author": "J. R. R. Tolkien",
            "title": "The Lord of the Rings",
            "isbn": "0-395-19395-8",
            "price": 22.99
          }
        ],
        "bicycle": {
          "color": "red",
          "price": 19.95
        }
      }
    }

### Results
####  Gold Standard (consensus)

    [
      {
        "bicycle": {
          "color": "red", 
          "price": 19.95
        }, 
        "book": [
          {
            "author": "Nigel Rees", 
            "category": "reference", 
            "price": 8.95, 
            "title": "Sayings of the Century"
          }, 
          {
            "author": "Evelyn Waugh", 
            "category": "fiction", 
            "price": 12.99, 
            "title": "Sword of Honour"
          }, 
          {
            "author": "Herman Melville", 
            "category": "fiction", 
            "isbn": "0-553-21311-3", 
            "price": 8.99, 
            "title": "Moby Dick"
          }, 
          {
            "author": "J. R. R. Tolkien", 
            "category": "fiction", 
            "isbn": "0-395-19395-8", 
            "price": 22.99, 
            "title": "The Lord of the Rings"
          }
        ]
      }, 
      [
        {
          "author": "Nigel Rees", 
          "category": "reference", 
          "price": 8.95, 
          "title": "Sayings of the Century"
        }, 
        {
          "author": "Evelyn Waugh", 
          "category": "fiction", 
          "price": 12.99, 
          "title": "Sword of Honour"
        }, 
        {
          "author": "Herman Melville", 
          "category": "fiction", 
          "isbn": "0-553-21311-3", 
          "price": 8.99, 
          "title": "Moby Dick"
        }, 
        {
          "author": "J. R. R. Tolkien", 
          "category": "fiction", 
          "isbn": "0-395-19395-8", 
          "price": 22.99, 
          "title": "The Lord of the Rings"
        }
      ], 
      {
        "color": "red", 
        "price": 19.95
      }, 
      {
        "author": "Nigel Rees", 
        "category": "reference", 
        "price": 8.95, 
        "title": "Sayings of the Century"
      }, 
      {
        "author": "Evelyn Waugh", 
        "category": "fiction", 
        "price": 12.99, 
        "title": "Sword of Honour"
      }, 
      {
        "author": "Herman Melville", 
        "category": "fiction", 
        "isbn": "0-553-21311-3", 
        "price": 8.99, 
        "title": "Moby Dick"
      }, 
      {
        "author": "J. R. R. Tolkien", 
        "category": "fiction", 
        "isbn": "0-395-19395-8", 
        "price": 22.99, 
        "title": "The Lord of the Rings"
      }, 
      "reference", 
      "Nigel Rees", 
      "Sayings of the Century", 
      8.95, 
      "fiction", 
      "Evelyn Waugh", 
      "Sword of Honour", 
      12.99, 
      "fiction", 
      "Herman Melville", 
      "Moby Dick", 
      "0-553-21311-3", 
      8.99, 
      "fiction", 
      "J. R. R. Tolkien", 
      "The Lord of the Rings", 
      "0-395-19395-8", 
      22.99, 
      "red", 
      19.95
    ]

#### Python (jsonpath-ng)

    [
      {
        "bicycle": {
          "color": "red", 
          "price": 19.95
        }, 
        "book": [
          {
            "author": "Nigel Rees", 
            "category": "reference", 
            "price": 8.95, 
            "title": "Sayings of the Century"
          }, 
          {
            "author": "Evelyn Waugh", 
            "category": "fiction", 
            "price": 12.99, 
            "title": "Sword of Honour"
          }, 
          {
            "author": "Herman Melville", 
            "category": "fiction", 
            "isbn": "0-553-21311-3", 
            "price": 8.99, 
            "title": "Moby Dick"
          }, 
          {
            "author": "J. R. R. Tolkien", 
            "category": "fiction", 
            "isbn": "0-395-19395-8", 
            "price": 22.99, 
            "title": "The Lord of the Rings"
          }
        ]
      }, 
      [
        {
          "author": "Nigel Rees", 
          "category": "reference", 
          "price": 8.95, 
          "title": "Sayings of the Century"
        }, 
        {
          "author": "Evelyn Waugh", 
          "category": "fiction", 
          "price": 12.99, 
          "title": "Sword of Honour"
        }, 
        {
          "author": "Herman Melville", 
          "category": "fiction", 
          "isbn": "0-553-21311-3", 
          "price": 8.99, 
          "title": "Moby Dick"
        }, 
        {
          "author": "J. R. R. Tolkien", 
          "category": "fiction", 
          "isbn": "0-395-19395-8", 
          "price": 22.99, 
          "title": "The Lord of the Rings"
        }
      ], 
      {
        "color": "red", 
        "price": 19.95
      }, 
      "reference", 
      8.95, 
      "Sayings of the Century", 
      "Nigel Rees", 
      "fiction", 
      12.99, 
      "Sword of Honour", 
      "Evelyn Waugh", 
      "fiction", 
      8.99, 
      "Moby Dick", 
      "0-553-21311-3", 
      "Herman Melville", 
      "fiction", 
      22.99, 
      "The Lord of the Rings", 
      "0-395-19395-8", 
      "J. R. R. Tolkien", 
      "red", 
      19.95
    ]
