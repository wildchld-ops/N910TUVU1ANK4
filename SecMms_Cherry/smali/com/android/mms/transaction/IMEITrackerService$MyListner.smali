.class Lcom/android/mms/transaction/IMEITrackerService$MyListner;
.super Landroid/telephony/PhoneStateListener;
.source "IMEITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/IMEITrackerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/IMEITrackerService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;Lcom/android/mms/transaction/IMEITrackerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/IMEITrackerService$MyListner;-><init>(Lcom/android/mms/transaction/IMEITrackerService;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 11

    const/4 v10, 0x1

    const-string v7, "ITS"

    const-string v8, "onServiceStateChanged entered"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-eq v7, v10, :cond_3

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    const-string v7, "ITS"

    const-string v8, "SIM is ready"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-virtual {v7}, Lcom/android/mms/transaction/IMEITrackerService;->createMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    # invokes: Lcom/android/mms/transaction/IMEITrackerService;->getServerNumbFromLocalSharePref()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/transaction/IMEITrackerService;->access$100(Lcom/android/mms/transaction/IMEITrackerService;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "NULL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v4, v7, Lcom/android/mms/transaction/IMEITrackerService;->defaultServerNo:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, v8, Lcom/android/mms/transaction/IMEITrackerService;->defaultServerNo:Ljava/lang/String;

    # invokes: Lcom/android/mms/transaction/IMEITrackerService;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/mms/transaction/IMEITrackerService;->access$200(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;)V

    :cond_0
    const-string v7, "ITS"

    const-string v8, "serverNumber : "

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    const-string v7, "ITS"

    const-string v8, "SIM_new"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v7, "samsungimeitrack"

    invoke-static {v7, v3}, Lcom/android/mms/transaction/IMEITrackerService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    const-string v7, "ITS"

    const-string v8, "message_encrypted : "

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v1, -0x1

    sget-object v7, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    if-nez v7, :cond_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v7, "ITS"

    const-string v8, "Native layer exception found"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    const/4 v5, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    sget-object v8, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move v1, v5

    const-string v7, "ITS"

    const-string v8, "Current Sim\'s IMSI value is already stored"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/mms/transaction/IMEITrackerService;->messagePass:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    sget v7, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_5

    sget v7, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMEI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/mms/transaction/IMEITrackerService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v4, v8}, Lcom/android/mms/transaction/IMEITrackerService;->access$300(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService;->messagePass:Ljava/lang/Boolean;

    :cond_3
    :goto_3
    const-string v7, "ITS"

    const-string v8, "onServiceStateChanged Exits"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, v8, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    # invokes: Lcom/android/mms/transaction/IMEITrackerService;->updateRecord(Ljava/util/ArrayList;)V
    invoke-static {v7, v8}, Lcom/android/mms/transaction/IMEITrackerService;->access$400(Lcom/android/mms/transaction/IMEITrackerService;Ljava/util/ArrayList;)V

    goto :goto_3
.end method
