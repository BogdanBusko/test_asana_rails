module SectionsHelper
  # Take tasks for section
  def tasks(project, section)
    tasks = ''
    section.tasks.each do |task|
      tasks += content_tag('div',
        "#{task.title} | #{ link_to 'Edit', edit_account_porject_section_path(project, task.section_id, task.id) }",
        class: 'task')
    end

    tasks
  end
end
