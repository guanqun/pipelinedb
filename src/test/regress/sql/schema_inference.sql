CREATE STREAM infer_stream ();
CREATE CONTINUOUS VIEW infer_v0 AS SELECT x::int8, y::bigint FROM infer_stream;
CREATE CONTINUOUS VIEW infer_v1 AS SELECT x::int4, y::real FROM infer_stream;
CREATE CONTINUOUS VIEW infer_v2 AS SELECT x::int2, y::integer FROM infer_stream;
CREATE CONTINUOUS VIEW infer_v3 AS SELECT x::numeric, y::float8 FROM infer_stream;
CREATE CONTINUOUS VIEW infer_v4 AS SELECT x::float4, y::numeric FROM infer_stream;
CREATE CONTINUOUS VIEW infer_v5 AS SELECT x::money, y::money, s::json FROM infer_stream;
CREATE CONTINUOUS VIEW infer_v6 AS SELECT x::money, y::money, s::jsonb FROM infer_stream;

INSERT INTO infer_stream (x, y) VALUES (1.1, 3.2);
INSERT INTO infer_stream (x, y) VALUES (1, 3.2);
INSERT INTO infer_stream (x, y) VALUES (1.999, 3.2);
INSERT INTO infer_stream (x, y) VALUES (1.2, 3.2);
INSERT INTO infer_stream (x, y) VALUES (1.2, 3.2);
INSERT INTO infer_stream (x, y) VALUES (1.2, 3.2);
INSERT INTO infer_stream (x, y) VALUES (1.2, 3.2);
INSERT INTO infer_stream (s) VALUES ('4');
INSERT INTO infer_stream (s) VALUES ('[0, 1]');
INSERT INTO infer_stream (s) VALUES ('{"key": "1"}');

SELECT * FROM infer_v0 ORDER BY x, y;
SELECT * FROM infer_v1 ORDER BY x, y;
SELECT * FROM infer_v2 ORDER BY x, y;
SELECT * FROM infer_v3 ORDER BY x, y;
SELECT * FROM infer_v4 ORDER BY x, y;
SELECT * FROM infer_v5 ORDER BY x, y, s::text;
SELECT * FROM infer_v6 ORDER BY x, y, s::text;

DROP STREAM infer_stream CASCADE;
