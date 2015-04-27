class Swag
  def self.api
    return %q(
      {
        "swagger": "2.0",
        "info": {
          "title": "Retsly API",
          "version": "1.0"
        },
        "host": "dev.rets.io",
        "basePath": "/api/v1",
        "schemes": [
          "https"
        ],
        "paths": {
          "/listing/{vendor}": {
            "get": {
              "summary": "Retrieves a set of listings",
              "operationId": "listListings",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "offset",
                  "in": "query",
                  "description": "Skips this number of results",
                  "required": false,
                  "type": "number",
                  "default": 0
                },
                {
                  "name": "limit",
                  "in": "query",
                  "description": "Limits the size of the result set.",
                  "required": false,
                  "type": "number",
                  "default": 10,
                  "maximum": 100,
                  "minimum": 1
                },
                {
                  "name": "near",
                  "in": "query",
                  "description": "Coord or location eg. near=-73.98,40.73 or near=San Diego",
                  "required": false,
                  "type": "string"
                },
                {
                  "name": "radius",
                  "in": "query",
                  "description": "Search Radius in miles, km, or degrees (no units)",
                  "required": false,
                  "type": "string",
                  "default": "10"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "array",
                        "items": {
                          "properties": {
                            "agentID": {
                              "type": "string"
                            },
                            "officeID": {
                              "type": "string"
                            },
                            "listingID": {
                              "type": "string"
                            },
                            "address": {
                              "type": "string"
                            },
                            "city": {
                              "type": "string"
                            },
                            "state": {
                              "type": "string"
                            },
                            "county": {
                              "type": "string"
                            },
                            "country": {
                              "type": "string"
                            },
                            "zipCode": {
                              "type": "string"
                            },
                            "date": {
                              "type": "string"
                            },
                            "price": {
                              "type": "string"
                            },
                            "yearBuilt": {
                              "type": "string"
                            },
                            "acres": {
                              "type": "string"
                            },
                            "squareFootage": {
                              "type": "string"
                            },
                            "livingArea": {
                              "type": "string"
                            },
                            "stories": {
                              "type": "string"
                            },
                            "subdivision": {
                              "type": "string"
                            },
                            "baths": {
                              "type": "string"
                            },
                            "bedrooms": {
                              "type": "string"
                            },
                            "fireplaces": {
                              "type": "string"
                            },
                            "garageSpaces": {
                              "type": "string"
                            },
                            "halfBaths": {
                              "type": "string"
                            },
                            "pool": {
                              "type": "string"
                            },
                            "mlsStatus": {
                              "type": "string"
                            },
                            "publicRemarks": {
                              "type": "string"
                            },
                            "photoTimestamp": {
                              "type": "string"
                            },
                            "photoCount": {
                              "type": "string"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/listing/{vendor}/{listingId}": {
            "get": {
              "summary": "Retrieves a listing",
              "operationId": "showListing",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "listingId",
                  "in": "path",
                  "description": "listing id",
                  "required": true,
                  "type": "string"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "object",
                        "properties": {
                          "agentID": {
                            "type": "string"
                          },
                          "officeID": {
                            "type": "string"
                          },
                          "listingID": {
                            "type": "string"
                          },
                          "address": {
                            "type": "string"
                          },
                          "city": {
                            "type": "string"
                          },
                          "state": {
                            "type": "string"
                          },
                          "county": {
                            "type": "string"
                          },
                          "country": {
                            "type": "string"
                          },
                          "zipCode": {
                            "type": "string"
                          },
                          "date": {
                            "type": "string"
                          },
                          "price": {
                            "type": "string"
                          },
                          "yearBuilt": {
                            "type": "string"
                          },
                          "acres": {
                            "type": "string"
                          },
                          "squareFootage": {
                            "type": "string"
                          },
                          "livingArea": {
                            "type": "string"
                          },
                          "stories": {
                            "type": "string"
                          },
                          "subdivision": {
                            "type": "string"
                          },
                          "baths": {
                            "type": "string"
                          },
                          "bedrooms": {
                            "type": "string"
                          },
                          "fireplaces": {
                            "type": "string"
                          },
                          "garageSpaces": {
                            "type": "string"
                          },
                          "halfBaths": {
                            "type": "string"
                          },
                          "pool": {
                            "type": "string"
                          },
                          "mlsStatus": {
                            "type": "string"
                          },
                          "publicRemarks": {
                            "type": "string"
                          },
                          "photoTimestamp": {
                            "type": "string"
                          },
                          "photoCount": {
                            "type": "string"
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/agent/{vendor}": {
            "get": {
              "summary": "Retrieves a set of agents",
              "operationId": "listAgents",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "offset",
                  "in": "query",
                  "description": "Skips this number of results",
                  "required": false,
                  "type": "number",
                  "default": 0
                },
                {
                  "name": "limit",
                  "in": "query",
                  "description": "Limits the size of the result set.",
                  "required": false,
                  "type": "number",
                  "default": 10,
                  "maximum": 100,
                  "minimum": 1
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "array",
                        "items": {
                          "properties": {
                            "agentID": {
                              "type": "string"
                            },
                            "firstName": {
                              "type": "string"
                            },
                            "lastName": {
                              "type": "string"
                            },
                            "middleName": {
                              "type": "string"
                            },
                            "fullName": {
                              "type": "string"
                            },
                            "cellPhone": {
                              "type": "string"
                            },
                            "homePhone": {
                              "type": "string"
                            },
                            "officeID": {
                              "type": "string"
                            },
                            "officePhone": {
                              "type": "string"
                            },
                            "officeName": {
                              "type": "string"
                            },
                            "email": {
                              "type": "string"
                            },
                            "title": {
                              "type": "string"
                            },
                            "media": {
                              "type": "string"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/agent/{vendor}/{agentId}": {
            "get": {
              "summary": "Retrieves an agent",
              "operationId": "showAgent",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "agentId",
                  "in": "path",
                  "description": "agentId",
                  "required": true,
                  "type": "string"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "object",
                        "properties": {
                          "agentID": {
                            "type": "string"
                          },
                          "firstName": {
                            "type": "string"
                          },
                          "lastName": {
                            "type": "string"
                          },
                          "middleName": {
                            "type": "string"
                          },
                          "fullName": {
                            "type": "string"
                          },
                          "cellPhone": {
                            "type": "string"
                          },
                          "homePhone": {
                            "type": "string"
                          },
                          "officeID": {
                            "type": "string"
                          },
                          "officePhone": {
                            "type": "string"
                          },
                          "officeName": {
                            "type": "string"
                          },
                          "email": {
                            "type": "string"
                          },
                          "title": {
                            "type": "string"
                          },
                          "media": {
                            "type": "string"
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/agent/{vendor}/{agentId}/listing": {
            "get": {
              "summary": "Retrieves an agent's listings",
              "operationId": "listAgentListings",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "offset",
                  "in": "query",
                  "description": "Skips this number of results",
                  "required": false,
                  "type": "number",
                  "default": 0
                },
                {
                  "name": "limit",
                  "in": "query",
                  "description": "Limits the size of the result set.",
                  "required": false,
                  "type": "number",
                  "default": 10,
                  "maximum": 100,
                  "minimum": 1
                },
                {
                  "name": "agentId",
                  "in": "path",
                  "description": "agentId",
                  "required": true,
                  "type": "string"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "array",
                        "items": {
                          "properties": {
                            "agentID": {
                              "type": "string"
                            },
                            "officeID": {
                              "type": "string"
                            },
                            "listingID": {
                              "type": "string"
                            },
                            "address": {
                              "type": "string"
                            },
                            "city": {
                              "type": "string"
                            },
                            "state": {
                              "type": "string"
                            },
                            "county": {
                              "type": "string"
                            },
                            "country": {
                              "type": "string"
                            },
                            "zipCode": {
                              "type": "string"
                            },
                            "date": {
                              "type": "string"
                            },
                            "price": {
                              "type": "string"
                            },
                            "yearBuilt": {
                              "type": "string"
                            },
                            "acres": {
                              "type": "string"
                            },
                            "squareFootage": {
                              "type": "string"
                            },
                            "livingArea": {
                              "type": "string"
                            },
                            "stories": {
                              "type": "string"
                            },
                            "subdivision": {
                              "type": "string"
                            },
                            "baths": {
                              "type": "string"
                            },
                            "bedrooms": {
                              "type": "string"
                            },
                            "fireplaces": {
                              "type": "string"
                            },
                            "garageSpaces": {
                              "type": "string"
                            },
                            "halfBaths": {
                              "type": "string"
                            },
                            "pool": {
                              "type": "string"
                            },
                            "mlsStatus": {
                              "type": "string"
                            },
                            "publicRemarks": {
                              "type": "string"
                            },
                            "photoTimestamp": {
                              "type": "string"
                            },
                            "photoCount": {
                              "type": "string"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/office/{vendor}": {
            "get": {
              "summary": "Retrieves a set of offices",
              "operationId": "listOffices",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "offset",
                  "in": "query",
                  "description": "Skips this number of results",
                  "required": false,
                  "type": "number",
                  "default": 0
                },
                {
                  "name": "limit",
                  "in": "query",
                  "description": "Limits the size of the result set.",
                  "required": false,
                  "type": "number",
                  "default": 10,
                  "maximum": 100,
                  "minimum": 1
                },
                {
                  "name": "near",
                  "in": "query",
                  "description": "Coord or location eg. near=-73.98,40.73 or near=San Diego",
                  "required": false,
                  "type": "string"
                },
                {
                  "name": "radius",
                  "in": "query",
                  "description": "Search Radius in miles, km, or degrees (no units)",
                  "required": false,
                  "type": "string",
                  "default": "10"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "array",
                        "items": {
                          "properties": {
                            "officeID": {
                              "type": "string"
                            },
                            "type": {
                              "type": "string"
                            },
                            "address": {
                              "type": "string"
                            },
                            "city": {
                              "type": "string"
                            },
                            "fax": {
                              "type": "string"
                            },
                            "email": {
                              "type": "string"
                            },
                            "name": {
                              "type": "string"
                            },
                            "phone": {
                              "type": "string"
                            },
                            "state": {
                              "type": "string"
                            },
                            "zipCode": {
                              "type": "string"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/office/{vendor}/{officeId}": {
            "get": {
              "summary": "Retrieves an office",
              "operationId": "showOffice",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "officeId",
                  "in": "path",
                  "description": "office id",
                  "required": true,
                  "type": "string"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "object",
                        "properties": {
                          "officeID": {
                            "type": "string"
                          },
                          "type": {
                            "type": "string"
                          },
                          "address": {
                            "type": "string"
                          },
                          "city": {
                            "type": "string"
                          },
                          "fax": {
                            "type": "string"
                          },
                          "email": {
                            "type": "string"
                          },
                          "name": {
                            "type": "string"
                          },
                          "phone": {
                            "type": "string"
                          },
                          "state": {
                            "type": "string"
                          },
                          "zipCode": {
                            "type": "string"
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/office/{vendor}/{officeId}/agents": {
            "get": {
              "summary": "Retrieves a set of agents from an office",
              "operationId": "listOfficeAgents",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "offset",
                  "in": "query",
                  "description": "Skips this number of results",
                  "required": false,
                  "type": "number",
                  "default": 0
                },
                {
                  "name": "limit",
                  "in": "query",
                  "description": "Limits the size of the result set.",
                  "required": false,
                  "type": "number",
                  "default": 10,
                  "maximum": 100,
                  "minimum": 1
                },
                {
                  "name": "officeId",
                  "in": "path",
                  "description": "office id",
                  "required": true,
                  "type": "string"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "array",
                        "items": {
                          "properties": {
                            "agentID": {
                              "type": "string"
                            },
                            "firstName": {
                              "type": "string"
                            },
                            "lastName": {
                              "type": "string"
                            },
                            "middleName": {
                              "type": "string"
                            },
                            "fullName": {
                              "type": "string"
                            },
                            "cellPhone": {
                              "type": "string"
                            },
                            "homePhone": {
                              "type": "string"
                            },
                            "officeID": {
                              "type": "string"
                            },
                            "officePhone": {
                              "type": "string"
                            },
                            "officeName": {
                              "type": "string"
                            },
                            "email": {
                              "type": "string"
                            },
                            "title": {
                              "type": "string"
                            },
                            "media": {
                              "type": "string"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/office/{vendor}/{officeId}/listings": {
            "get": {
              "summary": "Retrieves a set of Listings from an office.",
              "operationId": "listOfficeListings",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "offset",
                  "in": "query",
                  "description": "Skips this number of results",
                  "required": false,
                  "type": "number",
                  "default": 0
                },
                {
                  "name": "limit",
                  "in": "query",
                  "description": "Limits the size of the result set.",
                  "required": false,
                  "type": "number",
                  "default": 10,
                  "maximum": 100,
                  "minimum": 1
                },
                {
                  "name": "officeId",
                  "in": "path",
                  "description": "office id",
                  "required": true,
                  "type": "string"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "array",
                        "items": {
                          "properties": {
                            "agentID": {
                              "type": "string"
                            },
                            "officeID": {
                              "type": "string"
                            },
                            "listingID": {
                              "type": "string"
                            },
                            "address": {
                              "type": "string"
                            },
                            "city": {
                              "type": "string"
                            },
                            "state": {
                              "type": "string"
                            },
                            "county": {
                              "type": "string"
                            },
                            "country": {
                              "type": "string"
                            },
                            "zipCode": {
                              "type": "string"
                            },
                            "date": {
                              "type": "string"
                            },
                            "price": {
                              "type": "string"
                            },
                            "yearBuilt": {
                              "type": "string"
                            },
                            "acres": {
                              "type": "string"
                            },
                            "squareFootage": {
                              "type": "string"
                            },
                            "livingArea": {
                              "type": "string"
                            },
                            "stories": {
                              "type": "string"
                            },
                            "subdivision": {
                              "type": "string"
                            },
                            "baths": {
                              "type": "string"
                            },
                            "bedrooms": {
                              "type": "string"
                            },
                            "fireplaces": {
                              "type": "string"
                            },
                            "garageSpaces": {
                              "type": "string"
                            },
                            "halfBaths": {
                              "type": "string"
                            },
                            "pool": {
                              "type": "string"
                            },
                            "mlsStatus": {
                              "type": "string"
                            },
                            "publicRemarks": {
                              "type": "string"
                            },
                            "photoTimestamp": {
                              "type": "string"
                            },
                            "photoCount": {
                              "type": "string"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/openhouse/{vendor}": {
            "get": {
              "summary": "Retrieves a set of openhouses",
              "operationId": "listOpenhouses",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "offset",
                  "in": "query",
                  "description": "Skips this number of results",
                  "required": false,
                  "type": "number",
                  "default": 0
                },
                {
                  "name": "limit",
                  "in": "query",
                  "description": "Limits the size of the result set.",
                  "required": false,
                  "type": "number",
                  "default": 10,
                  "maximum": 100,
                  "minimum": 1
                },
                {
                  "name": "near",
                  "in": "query",
                  "description": "Coord or location eg. near=-73.98,40.73 or near=San Diego",
                  "required": false,
                  "type": "string"
                },
                {
                  "name": "radius",
                  "in": "query",
                  "description": "Search Radius in miles, km, or degrees (no units)",
                  "required": false,
                  "type": "string",
                  "default": "10"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "array",
                        "items": {
                          "properties": {
                            "openhouseID": {
                              "type": "string"
                            },
                            "listingID": {
                              "type": "string"
                            },
                            "date": {
                              "type": "string"
                            },
                            "startTime": {
                              "type": "string"
                            },
                            "endTime": {
                              "type": "string"
                            },
                            "agentID": {
                              "type": "string"
                            },
                            "type": {
                              "type": "string"
                            },
                            "remarks": {
                              "type": "string"
                            },
                            "status": {
                              "type": "string"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/openhouse/{vendor}/{openhouseId}": {
            "get": {
              "summary": "Retrieves an openhouses",
              "operationId": "showOpenhouse",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "openhouseId",
                  "in": "path",
                  "description": "openhouse id",
                  "required": true,
                  "type": "string"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "object",
                        "properties": {
                          "openhouseID": {
                            "type": "string"
                          },
                          "listingID": {
                            "type": "string"
                          },
                          "date": {
                            "type": "string"
                          },
                          "startTime": {
                            "type": "string"
                          },
                          "endTime": {
                            "type": "string"
                          },
                          "agentID": {
                            "type": "string"
                          },
                          "type": {
                            "type": "string"
                          },
                          "remarks": {
                            "type": "string"
                          },
                          "status": {
                            "type": "string"
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/media/{vendor}": {
            "get": {
              "summary": "Retrieves a collection of media",
              "operationId": "listMedia",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "offset",
                  "in": "query",
                  "description": "Skips this number of results",
                  "required": false,
                  "type": "number",
                  "default": 0
                },
                {
                  "name": "limit",
                  "in": "query",
                  "description": "Limits the size of the result set.",
                  "required": false,
                  "type": "number",
                  "default": 10,
                  "maximum": 100,
                  "minimum": 1
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "array",
                        "items": {
                          "properties": {
                            "_id": {
                              "type": "string"
                            },
                            "mediaId": {
                              "type": "string"
                            },
                            "url": {
                              "type": "string"
                            },
                            "mediaObjectID": {
                              "type": "string"
                            },
                            "shortDescription": {
                              "type": "string"
                            },
                            "resourceRecordKey": {
                              "type": "string"
                            },
                            "mimeType": {
                              "type": "string"
                            },
                            "index": {
                              "type": "string"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "/media/{vendor}/{mediaId}": {
            "get": {
              "summary": "Retrieves a media resource",
              "operationId": "showMedia",
              "parameters": [
                {
                  "name": "access_token",
                  "in": "query",
                  "description": "access token",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "vendor",
                  "in": "path",
                  "description": "vendor to get the listings from",
                  "required": true,
                  "type": "string"
                },
                {
                  "name": "mediaId",
                  "in": "path",
                  "description": "mediaId id",
                  "required": true,
                  "type": "string"
                }
              ],
              "responses": {
                "200": {
                  "description": "A successful response.",
                  "schema": {
                    "properties": {
                      "success": {
                        "type": "boolean"
                      },
                      "status": {
                        "type": "number",
                        "format": "int32"
                      },
                      "bundle": {
                        "type": "object",
                        "properties": {
                          "_id": {
                            "type": "string"
                          },
                          "mediaId": {
                            "type": "string"
                          },
                          "url": {
                            "type": "string"
                          },
                          "mediaObjectID": {
                            "type": "string"
                          },
                          "shortDescription": {
                            "type": "string"
                          },
                          "resourceRecordKey": {
                            "type": "string"
                          },
                          "mimeType": {
                            "type": "string"
                          },
                          "index": {
                            "type": "string"
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    )
  end
end