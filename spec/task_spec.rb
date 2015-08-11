require('rspec')
require('task')

describe(Task) do
  describe('#description') do
    it('provides description of a task') do
      test_task = Task.new("get a haircut")
      expect(test_task.description()).to(eq("get a haircut"))
    end
  end
end
