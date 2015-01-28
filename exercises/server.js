var express = require("express");
var methodOverride = require("method-override")
var fs = require("fs");
var bodyParser = require("body-parser");
var sqlite3 = require("sqlite3").verbose();
var file = "pets.db";
var exists = fs.readFileSync(file);

var db = new sqlite3.Database(file)
var app = express();
