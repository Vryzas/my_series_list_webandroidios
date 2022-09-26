// https://api.themoviedb.org/3/tv/popular?api_key=dbcab502de6e0362b40b88d9b17c4f6b&language=en-US&page=1
// a1b2c3d4

/*
{
backdrop_path:"/Aa9TLpNpBMyRkD8sPJ7ACKLjt0l.jpg",
first_air_date:"2022-08-21",
genre_ids:[10765,18,10759],
id:94997,
name:"House of the Dragon",
origin_country:["US"],
original_language:"en",
original_name:"House of the Dragon",
overview:"The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.",
popularity:5813.492,
poster_path:"/17TTFFAXcg1hKAi1smsXsbpipru.jpg",
vote_average:8.6,
vote_count:1386
}
*/
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
