require('spec_helper')

describe(List) do

  describe('#name') do
    it('tells you its name') do
      test_list = List.new({:name => "list-y stuff", :id => nil})
      expect(test_list.name()).to(eq("list-y stuff"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(List.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('sets its ID when you save it') do
      list = List.new({:name => "list-y stuff", :id => nil})
      list.save()
      expect(list.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe('#==') do
    it("is the same list if it has the same name") do
      list1 = List.new({:name => "list-y stuff", :id => nil})
      list2 = List.new({:name => "list-y stuff", :id => nil})
      expect(list1).to(eq(list2))
    end
  end

  describe("#save") do
    it("lets you save lists to the database") do
      test_list = List.new({:name => "list-y stuff", :id => nil})
      test_list.save()
      expect(List.all()).to(eq([test_list]))
    end
  end
end
