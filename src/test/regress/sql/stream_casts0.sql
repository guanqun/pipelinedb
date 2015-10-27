CREATE STREAM stream_casts_stream ();
CREATE CONTINUOUS VIEW test_stream_casts1 AS SELECT k::integer, SUM(v::float4) AS fsum, SUM(i::int4) AS isum, COUNT(*) FROM stream_casts_stream GROUP BY k;
CREATE CONTINUOUS VIEW test_stream_casts0 AS SELECT SUM(v::float8) AS fsum, SUM(i::int8) AS isum, COUNT(*) FROM stream_casts_stream;

INSERT INTO stream_casts_stream (k, v, i) VALUES ('001', 1.224, 1002);
INSERT INTO stream_casts_stream (k, v, i) VALUES ('102', 1e15, -100);
INSERT INTO stream_casts_stream (k, v, i) VALUES ('144', -1e-3, 1);
INSERT INTO stream_casts_stream (k, v, i) VALUES ('042', 42.42, 0), ('42', '42.42', 1), ('144', 1, 2);

SELECT * FROM test_stream_casts0;
SELECT * FROM test_stream_casts1 ORDER BY k;

-- Now just test every possible cast for each base type
CREATE STREAM int8_stream ();
CREATE STREAM int2_stream ();
CREATE STREAM int4_stream ();
CREATE STREAM float4_stream ();
CREATE STREAM float8_stream ();
CREATE STREAM numeric_stream ();
CREATE CONTINUOUS VIEW test_int8_to_int2 AS SELECT x::int8 FROM int8_stream;
CREATE CONTINUOUS VIEW test_int8_to_int4 AS SELECT x::int8 FROM int8_stream;
CREATE CONTINUOUS VIEW test_int8_to_float4 AS SELECT x::int8 FROM int8_stream;
CREATE CONTINUOUS VIEW test_int8_to_float8 AS SELECT x::int8 FROM int8_stream;
CREATE CONTINUOUS VIEW test_int8_to_numeric AS SELECT x::int8 FROM int8_stream;
CREATE CONTINUOUS VIEW test_int2_to_int8 AS SELECT x::int2 FROM int2_stream;
CREATE CONTINUOUS VIEW test_int2_to_int4 AS SELECT x::int2 FROM int2_stream;
CREATE CONTINUOUS VIEW test_int2_to_float4 AS SELECT x::int2 FROM int2_stream;
CREATE CONTINUOUS VIEW test_int2_to_float8 AS SELECT x::int2 FROM int2_stream;
CREATE CONTINUOUS VIEW test_int2_to_numeric AS SELECT x::int2 FROM int2_stream;
CREATE CONTINUOUS VIEW test_int4_to_int8 AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_int4_to_int2 AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_int4_to_float4 AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_int4_to_float8 AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_int4_to_numeric AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_float4_to_int8 AS SELECT x::float4 FROM float4_stream;
CREATE CONTINUOUS VIEW test_float4_to_int2 AS SELECT x::float4 FROM float4_stream;
CREATE CONTINUOUS VIEW test_float4_to_int4 AS SELECT x::float4 FROM float4_stream;
CREATE CONTINUOUS VIEW test_float4_to_float8 AS SELECT x::float4 FROM float4_stream;
CREATE CONTINUOUS VIEW test_float4_to_numeric AS SELECT x::float4 FROM float4_stream;
CREATE CONTINUOUS VIEW test_float8_to_int8 AS SELECT x::float8 FROM float8_stream;
CREATE CONTINUOUS VIEW test_float8_to_int2 AS SELECT x::float8 FROM float8_stream;
CREATE CONTINUOUS VIEW test_float8_to_int4 AS SELECT x::float8 FROM float8_stream;
CREATE CONTINUOUS VIEW test_float8_to_float4 AS SELECT x::float8 FROM float8_stream;
CREATE CONTINUOUS VIEW test_float8_to_numeric AS SELECT x::float8 FROM float8_stream;
CREATE CONTINUOUS VIEW test_numeric_to_int8 AS SELECT x::numeric FROM numeric_stream;

INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO float4_stream (x) VALUES ('1.4');
INSERT INTO float4_stream (x) VALUES ('1.4');
INSERT INTO float4_stream (x) VALUES ('1.4');
INSERT INTO float4_stream (x) VALUES ('1.4');
INSERT INTO float4_stream (x) VALUES ('1.4');
INSERT INTO float8_stream (x) VALUES ('1.8');
INSERT INTO float8_stream (x) VALUES ('1.8');
INSERT INTO float8_stream (x) VALUES ('1.8');
INSERT INTO float8_stream (x) VALUES ('1.8');
INSERT INTO float8_stream (x) VALUES ('1.8');
INSERT INTO numeric_stream (x) VALUES (1.00000001);
INSERT INTO numeric_stream (x) VALUES (1.00000001);
INSERT INTO numeric_stream (x) VALUES (1.00000001);
INSERT INTO numeric_stream (x) VALUES (1.00000001);
INSERT INTO numeric_stream (x) VALUES (1.00000001);
INSERT INTO numeric_stream (x) VALUES (1.00000001);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int2_stream (x) VALUES (2);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int8_stream (x) VALUES (8);
INSERT INTO int4_stream (x) VALUES (4);

SELECT x FROM test_int8_to_int2;
SELECT x FROM test_int8_to_int4;
SELECT x FROM test_int8_to_float4;
SELECT x FROM test_int8_to_float8;
SELECT x FROM test_int8_to_numeric;
SELECT x FROM test_int2_to_int8;
SELECT x FROM test_int2_to_int4;
SELECT x FROM test_int2_to_float4;
SELECT x FROM test_int2_to_float8;
SELECT x FROM test_int2_to_numeric;
SELECT x FROM test_int4_to_int8;
SELECT x FROM test_int4_to_int2;
SELECT x FROM test_int4_to_float4;
SELECT x FROM test_int4_to_float8;
SELECT x FROM test_int4_to_numeric;
SELECT x FROM test_float4_to_int8;
SELECT x FROM test_float4_to_int2;
SELECT x FROM test_float4_to_int4;
SELECT x FROM test_float4_to_float8;
SELECT x FROM test_float4_to_numeric;
SELECT x FROM test_float8_to_int8;
SELECT x FROM test_float8_to_int2;
SELECT x FROM test_float8_to_int4;
SELECT x FROM test_float8_to_float4;
SELECT x FROM test_float8_to_numeric;
SELECT x FROM test_numeric_to_int8;

DROP STREAM stream_casts_stream CASCADE;
DROP STREAM int2_stream CASCADE;
DROP STREAM int4_stream CASCADE;
DROP STREAM int8_stream CASCADE;
DROP STREAM float4_stream CASCADE;
DROP STREAM float8_stream CASCADE;
DROP STREAM numeric_stream CASCADE;
