SELECT
    Students.student_id,
    Students.student_name,
    subj.subject_name,
    COUNT(Examinations.student_id) AS attended_exams
FROM
    Students
    CROSS JOIN Subjects subj
    LEFT JOIN Examinations ON Students.student_id = Examinations.student_id AND subj.subject_name = Examinations.subject_name
GROUP BY
    Students.student_id,
    Students.student_name,
    subj.subject_name
ORDER BY
    Students.student_id,
    subj.subject_name