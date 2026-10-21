
CREATE OR REPLACE TABLE HEVY.RAW.USER_INFO (
  user_id NUMBER(8,0) PRIMARY KEY,
  username VARCHAR,
  email VARCHAR,
  first_name VARCHAR,
  last_name VARCHAR,
  date_of_birth DATE,
  gender VARCHAR,
  height_cm NUMBER(5,2),
  fitness_goal VARCHAR,
  experience_level VARCHAR,
  activity_level VARCHAR,
  account_created_date DATE,
  subscription_type VARCHAR,
  city VARCHAR,
  state VARCHAR,
  country VARCHAR,
  is_active BOOLEAN
);

-- CREATE OR REPLACE TABLE HEVY.RAW.DIM_EXERCISE (
--   exercise_id VARCHAR(4) PRIMARY KEY,
--   name VARCHAR,
--   category VARCHAR,
--   body_part VARCHAR,
--   equipment VARCHAR,
--   target VARCHAR,
--   muscle_group VARCHAR,
--   secondary_muscles VARIANT,
--   metadata_status VARCHAR
-- );

CREATE OR REPLACE TABLE HEVY.RAW.WORKOUT_SESSION (
  workout_id NUMBER PRIMARY KEY,
  user_id NUMBER(8,0),
  title VARCHAR,
  start_time VARCHAR,
  end_time VARCHAR,
  description VARCHAR
);

CREATE OR REPLACE TABLE HEVY.RAW.WORKOUT_DATA (
  workout_id NUMBER,
  user_id NUMBER(8,0),
  exercise_id VARCHAR(4),
  source_exercise_id VARCHAR,
  exercise_title VARCHAR,
  title VARCHAR,
  start_time VARCHAR,
  end_time VARCHAR,
  description VARCHAR,
  superset_id VARCHAR,
  exercise_notes VARCHAR,
  set_index NUMBER,
  set_type VARCHAR,
  weight_kg NUMBER(10,2),
  reps NUMBER,
  distance_km NUMBER(10,3),
  duration_seconds NUMBER,
  rpe NUMBER(4,2)
);

CREATE OR REPLACE TABLE HEVY.RAW.WORKOUT_ROUTINES (
  routine_id NUMBER PRIMARY KEY,
  user_id NUMBER(8,0),
  routine_name VARCHAR,
  routine_type VARCHAR,
  description VARCHAR,
  created_at VARCHAR,
  active BOOLEAN
);

CREATE OR REPLACE TABLE HEVY.RAW.ROUTINE_EXERCISES (
  routine_id NUMBER,
  user_id NUMBER(8,0),
  source_exercise_id VARCHAR,
  exercise_id VARCHAR(4),
  exercise_title VARCHAR,
  order_index NUMBER,
  target_sets NUMBER,
  target_reps_min NUMBER,
  target_reps_max NUMBER,
  target_weight_kg NUMBER(10,2),
  rest_seconds NUMBER,
  notes VARCHAR
);

CREATE OR REPLACE TABLE HEVY.RAW.USER_GOALS (
    goal_id NUMBER(8,0),
    user_id NUMBER(8,0),
    goal_type VARCHAR,
    target_value NUMBER(10,2),
    unit VARCHAR,
    start_date DATE,
    target_date DATE,
    status VARCHAR
);

CREATE OR REPLACE TABLE HEVY.RAW.MEASUREMENT_DATA (
    measurement_id NUMBER(8,0),
    user_id NUMBER(8,0),
    date VARCHAR,
    weight_kg NUMBER(6,2),
    fat_percent NUMBER(5,2),
    neck_in NUMBER(5,2),
    shoulder_in NUMBER(5,2),
    chest_in NUMBER(5,2),
    left_bicep_in NUMBER(5,2),
    right_bicep_in NUMBER(5,2),
    left_forearm_in NUMBER(5,2),
    right_forearm_in NUMBER(5,2),
    abdomen_in NUMBER(5,2),
    waist_in NUMBER(5,2),
    hips_in NUMBER(5,2),
    left_thigh_in NUMBER(5,2),
    right_thigh_in NUMBER(5,2),
    left_calf_in NUMBER(5,2),
    right_calf_in NUMBER(5,2)
);
