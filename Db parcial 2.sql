SELECT
  g.id AS grade_id,
    e.student_id,
    gt.name AS grade_type,
    g.grade,
    gt.weight
FROM grades g
JOIN enrollment e ON g.enrrollment_id = e.id
JOIN grade_type gt ON g.grade_type_id = gt.id
WHERE e.course_id = 123