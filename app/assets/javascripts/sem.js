jQuery(function() {
  var states;
  states = $('#student_semester_id').html();
  console.log(states);
  return $('#student_department_id').change(function() {
    var department, options;
    department = $('#student_department_id :selected').text();
    options = $(semester).filter("optgroup[label=" + department + "]").html();
    console.log(options);
    if (options) {
      return $('#student_semester_id').html(options);
    } else {
      return $('#student_semester_id').empty();
    }
  });
})