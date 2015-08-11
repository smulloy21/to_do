require('rspec')
require('task')

describe(Task) do
  before() do
    Task.clear()
  end

  describe('#description') do
    it('provides description of a task') do
      test_task = Task.new("get a haircut")
      expect(test_task.description()).to(eq("get a haircut"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('saves a new task to all tasks') do
      test_task = Task.new("mow the lawn")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it('empty out all of the saved tasks') do
      Task.new("mow the lawn").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end
