class ListNode
    attr_accessor :val, :nxt

    def initialize(val = 0, nxt = nil)
        @val = val
        @next = nxt
    end
end

# input head node
# output head node pointing to last node in original linked list
def reverse_list(head)
  prev = nil
  curr = head
  until curr.nil?
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt
  end
  prev
end
