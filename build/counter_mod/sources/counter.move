module publisher::counter{
    
    use std::signer;

    struct CountHolder has key,drop,copy {
        count:u64
    }

    public fun get_count(addr: address): u64 acquires CountHolder {
        assert!(exists<CountHolder>(addr), 0);
        *&borrow_global<CountHolder>(addr).count
    }

    public entry fun bump(account: signer) acquires CountHolder {
        let addr = signer::address_of(&account);
        if(!exists<CountHolder>(addr)){
            move_to(
                &account,CountHolder {
                    count: 0
                }
            )
        }else{
            let oldCount = borrow_global_mut<CountHolder>(addr);
            oldCount.count = oldCount.count + 1;
        }
    }

    // exists : This function checks for the instance of the given struct exists for the given signer
    // exists<ANY_STRUCT>(ADDRESS)

    // move_to : This function is used to create a instance for the current account
    // move_to(<&account|signer>, <struct> {props_struct})

    // signer::address_of() : This gives the address of the signer.

}