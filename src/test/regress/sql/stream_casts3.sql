CREATE CONTINUOUS VIEW test_char_to_bpchar AS SELECT x::char FROM char_stream;
CREATE CONTINUOUS VIEW test_char_to_varchar AS SELECT x::char FROM char_stream;
CREATE CONTINUOUS VIEW test_name_to_text AS SELECT x::name FROM name_stream;
CREATE CONTINUOUS VIEW test_name_to_bpchar AS SELECT x::name FROM name_stream;
CREATE CONTINUOUS VIEW test_name_to_varchar AS SELECT x::name FROM name_stream;
CREATE CONTINUOUS VIEW test_text_to_char AS SELECT x::text FROM text_stream;
CREATE CONTINUOUS VIEW test_varchar_to_char AS SELECT x::varchar FROM varchar_stream;
CREATE CONTINUOUS VIEW test_text_to_name AS SELECT x::text FROM text_stream;
CREATE CONTINUOUS VIEW test_varchar_to_name AS SELECT x::varchar FROM varchar_stream;
CREATE CONTINUOUS VIEW test_char_to_int4 AS SELECT x::char FROM char_stream;
CREATE CONTINUOUS VIEW test_int4_to_char AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_date_to_timestamp AS SELECT x::date FROM date_stream;
CREATE CONTINUOUS VIEW test_date_to_timestamptz AS SELECT x::date FROM date_stream;
CREATE CONTINUOUS VIEW test_time_to_interval AS SELECT x::time FROM time_stream;
CREATE CONTINUOUS VIEW test_time_to_timetz AS SELECT x::time FROM time_stream;
CREATE CONTINUOUS VIEW test_timestamp_to_abstime AS SELECT x::timestamp FROM timestamp_stream;
CREATE CONTINUOUS VIEW test_timestamp_to_date AS SELECT x::timestamp FROM timestamp_stream;
CREATE CONTINUOUS VIEW test_timestamp_to_time AS SELECT x::timestamp FROM timestamp_stream;
CREATE CONTINUOUS VIEW test_timestamp_to_timestamptz AS SELECT x::timestamp FROM timestamp_stream;
CREATE CONTINUOUS VIEW test_timestamptz_to_abstime AS SELECT x::timestamptz FROM timestamptz_stream;
CREATE CONTINUOUS VIEW test_timestamptz_to_date AS SELECT x::timestamptz FROM timestamptz_stream;
CREATE CONTINUOUS VIEW test_timestamptz_to_time AS SELECT x::timestamptz FROM timestamptz_stream;
CREATE CONTINUOUS VIEW test_timestamptz_to_timestamp AS SELECT x::timestamptz FROM timestamptz_stream;
CREATE CONTINUOUS VIEW test_timestamptz_to_timetz AS SELECT x::timestamptz FROM timestamptz_stream;
CREATE CONTINUOUS VIEW test_interval_to_reltime AS SELECT x::interval FROM interval_stream;
CREATE CONTINUOUS VIEW test_interval_to_time AS SELECT x::interval FROM interval_stream;
CREATE CONTINUOUS VIEW test_timetz_to_time AS SELECT x::timetz FROM timetz_stream;
CREATE CONTINUOUS VIEW test_int4_to_abstime AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_int4_to_reltime AS SELECT x::int4 FROM int4_stream;
CREATE CONTINUOUS VIEW test_lseg_to_point AS SELECT x::lseg FROM lseg_stream;
CREATE CONTINUOUS VIEW test_path_to_point AS SELECT x::path FROM path_stream;

INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO text_stream (x) VALUES ('text text text!');
INSERT INTO varchar_stream (x) VALUES ('varchaaaaaaaar');
INSERT INTO text_stream (x) VALUES ('text text text!');
INSERT INTO text_stream (x) VALUES ('text text text!');
INSERT INTO varchar_stream (x) VALUES ('varchaaaaaaaar');
INSERT INTO varchar_stream (x) VALUES ('varchaaaaaaaar');
INSERT INTO char_stream (x) VALUES ('c');
INSERT INTO char_stream (x) VALUES ('c');
INSERT INTO char_stream (x) VALUES ('c');
INSERT INTO name_stream (x) VALUES ('nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO name_stream (x) VALUES ('nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO name_stream (x) VALUES ('nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn');
INSERT INTO text_stream (x) VALUES ('text text text!');
INSERT INTO varchar_stream (x) VALUES ('varchaaaaaaaar');
INSERT INTO text_stream (x) VALUES ('text text text!');
INSERT INTO varchar_stream (x) VALUES ('varchaaaaaaaar');
INSERT INTO char_stream (x) VALUES ('c');
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO date_stream (x) VALUES ('2014-01-01');
INSERT INTO date_stream (x) VALUES ('2014-01-01');
INSERT INTO time_stream (x) VALUES ('00:01:02');
INSERT INTO time_stream (x) VALUES ('00:01:02');
INSERT INTO timestamp_stream (x) VALUES ('2014-01-01 00:11:22');
INSERT INTO timestamp_stream (x) VALUES ('2014-01-01 00:11:22');
INSERT INTO timestamp_stream (x) VALUES ('2014-01-01 00:11:22');
INSERT INTO timestamp_stream (x) VALUES ('2014-01-01 00:11:22');
INSERT INTO timestamptz_stream (x) VALUES ('2014-01-01 00:11:22-08');
INSERT INTO timestamptz_stream (x) VALUES ('2014-01-01 00:11:22-08');
INSERT INTO timestamptz_stream (x) VALUES ('2014-01-01 00:11:22-08');
INSERT INTO timestamptz_stream (x) VALUES ('2014-01-01 00:11:22-08');
INSERT INTO timestamptz_stream (x) VALUES ('2014-01-01 00:11:22-08');
INSERT INTO interval_stream (x) VALUES ('@ 1 minute');
INSERT INTO interval_stream (x) VALUES ('@ 1 minute');
INSERT INTO timetz_stream (x) VALUES ('00:11:22-08');
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO lseg_stream (x) VALUES ('[(1,2),(3,4)]');
INSERT INTO path_stream (x) VALUES ('(11,12,13,14)');
INSERT INTO path_stream (x) VALUES ('(11,12,13,14)');
INSERT INTO int4_stream (x) VALUES (4);
INSERT INTO text_stream (x) VALUES ('text text text!');
INSERT INTO varchar_stream (x) VALUES ('varchaaaaaaaar');

SELECT x FROM test_char_to_bpchar;
SELECT x FROM test_char_to_varchar;
SELECT x FROM test_name_to_text;
SELECT x FROM test_name_to_bpchar;
SELECT x FROM test_name_to_varchar;
SELECT x FROM test_text_to_char;
SELECT x FROM test_varchar_to_char;
SELECT x FROM test_text_to_name;
SELECT x FROM test_varchar_to_name;
SELECT x FROM test_char_to_int4;
SELECT x FROM test_int4_to_char;
SELECT x FROM test_date_to_timestamp;
SELECT x FROM test_date_to_timestamptz;
SELECT x FROM test_time_to_interval;
SELECT x FROM test_time_to_timetz;
SELECT x FROM test_timestamp_to_abstime;
SELECT x FROM test_timestamp_to_date;
SELECT x FROM test_timestamp_to_time;
SELECT x FROM test_timestamp_to_timestamptz;
SELECT x FROM test_timestamptz_to_abstime;
SELECT x FROM test_timestamptz_to_date;
SELECT x FROM test_timestamptz_to_time;
SELECT x FROM test_timestamptz_to_timestamp;
SELECT x FROM test_timestamptz_to_timetz;
SELECT x FROM test_interval_to_reltime;
SELECT x FROM test_interval_to_time;
SELECT x FROM test_timetz_to_time;
SELECT x FROM test_int4_to_abstime;
SELECT x FROM test_int4_to_reltime;
SELECT x FROM test_lseg_to_point;
SELECT x FROM test_path_to_point;

DROP CONTINUOUS VIEW test_char_to_bpchar;
DROP CONTINUOUS VIEW test_char_to_varchar;
DROP CONTINUOUS VIEW test_name_to_text;
DROP CONTINUOUS VIEW test_name_to_bpchar;
DROP CONTINUOUS VIEW test_name_to_varchar;
DROP CONTINUOUS VIEW test_text_to_char;
DROP CONTINUOUS VIEW test_varchar_to_char;
DROP CONTINUOUS VIEW test_text_to_name;
DROP CONTINUOUS VIEW test_varchar_to_name;
DROP CONTINUOUS VIEW test_char_to_int4;
DROP CONTINUOUS VIEW test_int4_to_char;
DROP CONTINUOUS VIEW test_date_to_timestamp;
DROP CONTINUOUS VIEW test_date_to_timestamptz;
DROP CONTINUOUS VIEW test_time_to_interval;
DROP CONTINUOUS VIEW test_time_to_timetz;
DROP CONTINUOUS VIEW test_timestamp_to_abstime;
DROP CONTINUOUS VIEW test_timestamp_to_date;
DROP CONTINUOUS VIEW test_timestamp_to_time;
DROP CONTINUOUS VIEW test_timestamp_to_timestamptz;
DROP CONTINUOUS VIEW test_timestamptz_to_abstime;
DROP CONTINUOUS VIEW test_timestamptz_to_date;
DROP CONTINUOUS VIEW test_timestamptz_to_time;
DROP CONTINUOUS VIEW test_timestamptz_to_timestamp;
DROP CONTINUOUS VIEW test_timestamptz_to_timetz;
DROP CONTINUOUS VIEW test_interval_to_reltime;
DROP CONTINUOUS VIEW test_interval_to_time;
DROP CONTINUOUS VIEW test_timetz_to_time;
DROP CONTINUOUS VIEW test_int4_to_abstime;
DROP CONTINUOUS VIEW test_int4_to_reltime;
DROP CONTINUOUS VIEW test_lseg_to_point;
DROP CONTINUOUS VIEW test_path_to_point;

CREATE CONTINUOUS VIEW test_bool_inputs AS SELECT b::boolean FROM cqdecode_stream;

INSERT INTO cqdecode_stream (b) VALUES (TRUE), (true), ('true'), ('t'), ('y'), ('on'), ('1'::boolean), (1::boolean);
INSERT INTO cqdecode_stream (b) VALUES (FALSE), (false), ('false'), ('f'), ('n'), ('off'), ('0'::boolean), (0::boolean);

SELECT b, COUNT(*) FROM test_bool_inputs GROUP BY b;

DROP CONTINUOUS VIEW test_bool_inputs;
