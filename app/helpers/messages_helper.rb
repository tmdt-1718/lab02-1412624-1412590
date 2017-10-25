module MessagesHelper
     # change status of message
     def setReaded(id)
        Message.update(id, :status=>1, :seen_time => Time.new)
    end
end
