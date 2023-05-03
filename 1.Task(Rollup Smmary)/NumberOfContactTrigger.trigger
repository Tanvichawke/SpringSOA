trigger NumberOfContactTrigger on Contact (After insert, after update, after delete , after undelete) {
    if(Trigger.isafter){
        if(Trigger.IsInsert || Trigger.IsUpdate || Trigger.IsUndelete){
            NumberOfContactHandler.NewMethod(Trigger.new);
        }
        if(Trigger.IsUpdate || Trigger.IsDelete){
            NumberOfContactHandler.oldMethod(Trigger.Old);
        }
    }
}