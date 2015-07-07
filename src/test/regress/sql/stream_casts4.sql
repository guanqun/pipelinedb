CREATE CONTINUOUS VIEW test_path_to_polygon AS SELECT x::path FROM path_stream;
CREATE CONTINUOUS VIEW test_box_to_point AS SELECT x::box FROM box_stream;
CREATE CONTINUOUS VIEW test_box_to_lseg AS SELECT x::box FROM box_stream;
CREATE CONTINUOUS VIEW test_box_to_polygon AS SELECT x::box FROM box_stream;
CREATE CONTINUOUS VIEW test_box_to_circle AS SELECT x::box FROM box_stream;
CREATE CONTINUOUS VIEW test_polygon_to_point AS SELECT x::polygon FROM polygon_stream;
CREATE CONTINUOUS VIEW test_polygon_to_path AS SELECT x::polygon FROM polygon_stream;
CREATE CONTINUOUS VIEW test_polygon_to_box AS SELECT x::polygon FROM polygon_stream;
CREATE CONTINUOUS VIEW test_polygon_to_circle AS SELECT x::polygon FROM polygon_stream;
CREATE CONTINUOUS VIEW test_circle_to_point AS SELECT x::circle FROM circle_stream;
CREATE CONTINUOUS VIEW test_circle_to_box AS SELECT x::circle FROM circle_stream;
CREATE CONTINUOUS VIEW test_circle_to_polygon AS SELECT x::circle FROM circle_stream;
CREATE CONTINUOUS VIEW test_cidr_to_inet AS SELECT x::cidr FROM cidr_stream;
CREATE CONTINUOUS VIEW test_inet_to_cidr AS SELECT x::inet FROM inet_stream;
CREATE CONTINUOUS VIEW test_bit_to_varbit AS SELECT x::bit FROM bit_stream;
CREATE CONTINUOUS VIEW test_varbit_to_bit AS SELECT x::varbit FROM varbit_stream;
CREATE CONTINUOUS VIEW test_int8_to_bit AS SELECT x::int8 FROM int8_stream;
CREATE CONTINUOUS VIEW test_int4_to_bit AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_bit_to_int8 AS SELECT x::bit FROM bit_stream;
CREATE CONTINUOUS VIEW test_bit_to_int4 AS SELECT x::bit FROM bit_stream;
CREATE CONTINUOUS VIEW test_cidr_to_text AS SELECT x::cidr FROM cidr_stream;
CREATE CONTINUOUS VIEW test_inet_to_text AS SELECT x::inet FROM inet_stream;
CREATE CONTINUOUS VIEW test_bool_to_text AS SELECT x::bool FROM bool_stream;
CREATE CONTINUOUS VIEW test_cidr_to_varchar AS SELECT x::cidr FROM cidr_stream;
CREATE CONTINUOUS VIEW test_inet_to_varchar AS SELECT x::inet FROM inet_stream;
CREATE CONTINUOUS VIEW test_bool_to_varchar AS SELECT x::bool FROM bool_stream;
CREATE CONTINUOUS VIEW test_cidr_to_bpchar AS SELECT x::cidr FROM cidr_stream;
CREATE CONTINUOUS VIEW test_inet_to_bpchar AS SELECT x::inet FROM inet_stream;
CREATE CONTINUOUS VIEW test_bool_to_bpchar AS SELECT x::bool FROM bool_stream;
CREATE CONTINUOUS VIEW test_json_to_jsonb AS SELECT x::json FROM json_stream;
CREATE CONTINUOUS VIEW test_jsonb_to_json AS SELECT x::jsonb FROM jsonb_stream;

INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO bool_stream (x) VALUES ('true');
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO path_stream (x) VALUES ('(11,12,13,14)');
INSERT INTO path_stream (x) VALUES ('(11,12,13,14)');
INSERT INTO box_stream (x) VALUES ('(2.0,2.0,0.0,0.0)');
INSERT INTO box_stream (x) VALUES ('(2.0,2.0,0.0,0.0)');
INSERT INTO box_stream (x) VALUES ('(2.0,2.0,0.0,0.0)');
INSERT INTO box_stream (x) VALUES ('(2.0,2.0,0.0,0.0)');
INSERT INTO polygon_stream (x) VALUES ('(2.0,0.0),(2.0,4.0),(0.0,0.0)');
INSERT INTO polygon_stream (x) VALUES ('(2.0,0.0),(2.0,4.0),(0.0,0.0)');
INSERT INTO polygon_stream (x) VALUES ('(2.0,0.0),(2.0,4.0),(0.0,0.0)');
INSERT INTO polygon_stream (x) VALUES ('(2.0,0.0),(2.0,4.0),(0.0,0.0)');
INSERT INTO circle_stream (x) VALUES ('<(5,1),3>');
INSERT INTO circle_stream (x) VALUES ('<(5,1),3>');
INSERT INTO circle_stream (x) VALUES ('<(5,1),3>');
INSERT INTO cidr_stream (x) VALUES ('1.2.6.4');
INSERT INTO inet_stream (x) VALUES ('192.168.1.226/24');
INSERT INTO bit_stream (x) VALUES (1::bit);
INSERT INTO varbit_stream (x) VALUES ('01010101');
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO bit_stream (x) VALUES (1::bit);
INSERT INTO bit_stream (x) VALUES (1::bit);
INSERT INTO cidr_stream (x) VALUES ('1.2.6.4');
INSERT INTO inet_stream (x) VALUES ('192.168.1.226/24');
INSERT INTO bool_stream (x) VALUES ('true');
INSERT INTO cidr_stream (x) VALUES ('1.2.6.4');
INSERT INTO inet_stream (x) VALUES ('192.168.1.226/24');
INSERT INTO bool_stream (x) VALUES ('true');
INSERT INTO cidr_stream (x) VALUES ('1.2.6.4');
INSERT INTO inet_stream (x) VALUES ('192.168.1.226/24');
INSERT INTO bool_stream (x) VALUES ('true');
INSERT INTO json_stream (x) VALUES ('[2, 1, 0]');
INSERT INTO jsonb_stream (x) VALUES ('[0, 1, 2]');

SELECT x FROM test_path_to_polygon;
SELECT x FROM test_box_to_point;
SELECT x FROM test_box_to_lseg;
SELECT x FROM test_box_to_polygon;
SELECT x FROM test_box_to_circle;
SELECT x FROM test_polygon_to_point;
SELECT x FROM test_polygon_to_path;
SELECT x FROM test_polygon_to_box;
SELECT x FROM test_polygon_to_circle;
SELECT x FROM test_circle_to_point;
SELECT x FROM test_circle_to_box;
SELECT x FROM test_circle_to_polygon;
SELECT x FROM test_cidr_to_inet;
SELECT x FROM test_inet_to_cidr;
SELECT x FROM test_bit_to_varbit;
SELECT x FROM test_varbit_to_bit;
SELECT x FROM test_int8_to_bit;
SELECT x FROM test_int4_to_bit;
SELECT x FROM test_bit_to_int8;
SELECT x FROM test_bit_to_int4;
SELECT x FROM test_cidr_to_text;
SELECT x FROM test_inet_to_text;
SELECT x FROM test_bool_to_text;
SELECT x FROM test_cidr_to_varchar;
SELECT x FROM test_inet_to_varchar;
SELECT x FROM test_bool_to_varchar;
SELECT x FROM test_cidr_to_bpchar;
SELECT x FROM test_inet_to_bpchar;
SELECT x FROM test_bool_to_bpchar;
SELECT x FROM test_json_to_jsonb;
SELECT x FROM test_jsonb_to_json;

DROP CONTINUOUS VIEW test_path_to_polygon;
DROP CONTINUOUS VIEW test_box_to_point;
DROP CONTINUOUS VIEW test_box_to_lseg;
DROP CONTINUOUS VIEW test_box_to_polygon;
DROP CONTINUOUS VIEW test_box_to_circle;
DROP CONTINUOUS VIEW test_polygon_to_point;
DROP CONTINUOUS VIEW test_polygon_to_path;
DROP CONTINUOUS VIEW test_polygon_to_box;
DROP CONTINUOUS VIEW test_polygon_to_circle;
DROP CONTINUOUS VIEW test_circle_to_point;
DROP CONTINUOUS VIEW test_circle_to_box;
DROP CONTINUOUS VIEW test_circle_to_polygon;
DROP CONTINUOUS VIEW test_cidr_to_inet;
DROP CONTINUOUS VIEW test_inet_to_cidr;
DROP CONTINUOUS VIEW test_bit_to_varbit;
DROP CONTINUOUS VIEW test_varbit_to_bit;
DROP CONTINUOUS VIEW test_int8_to_bit;
DROP CONTINUOUS VIEW test_int4_to_bit;
DROP CONTINUOUS VIEW test_bit_to_int8;
DROP CONTINUOUS VIEW test_bit_to_int4;
DROP CONTINUOUS VIEW test_cidr_to_text;
DROP CONTINUOUS VIEW test_inet_to_text;
DROP CONTINUOUS VIEW test_bool_to_text;
DROP CONTINUOUS VIEW test_cidr_to_varchar;
DROP CONTINUOUS VIEW test_inet_to_varchar;
DROP CONTINUOUS VIEW test_bool_to_varchar;
DROP CONTINUOUS VIEW test_cidr_to_bpchar;
DROP CONTINUOUS VIEW test_inet_to_bpchar;
DROP CONTINUOUS VIEW test_bool_to_bpchar;
DROP CONTINUOUS VIEW test_json_to_jsonb;
DROP CONTINUOUS VIEW test_jsonb_to_json;
