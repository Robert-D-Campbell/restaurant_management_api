class Order < ApplicationRecord

    enum order_status: {
        sent: 10,
        received: 20,
    }

    enum order_type: {
        dine_in: 10,
        call_in: 20,
        online: 30,
    }
    enum order_method: {
        delivery: 10,
        carry_out: 20,
        curb_side: 30,
    }
end
