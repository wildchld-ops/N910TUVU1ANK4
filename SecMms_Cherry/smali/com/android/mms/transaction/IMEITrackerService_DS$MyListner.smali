.class Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;
.super Landroid/telephony/PhoneStateListener;
.source "IMEITrackerService_DS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/IMEITrackerService_DS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/IMEITrackerService_DS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/IMEITrackerService_DS;Lcom/android/mms/transaction/IMEITrackerService_DS$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;-><init>(Lcom/android/mms/transaction/IMEITrackerService_DS;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iput-object p1, v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->mServiceState:Landroid/telephony/ServiceState;

    const-string v1, "ITS_DS"

    const-string v2, "onServiceStateChanged entered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->SimID:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iget-object v0, v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm0:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePassSim0:Ljava/lang/Boolean;

    sput-object v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePass:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    # invokes: Lcom/android/mms/transaction/IMEITrackerService_DS;->sendIMEITrackerMsgIfNeeded(Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)V
    invoke-static {v1, v0, p1}, Lcom/android/mms/transaction/IMEITrackerService_DS;->access$100(Lcom/android/mms/transaction/IMEITrackerService_DS;Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)V

    :goto_1
    const-string v1, "ITS_DS"

    const-string v2, "onServiceStateChanged Exits"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService_DS$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService_DS;

    iget-object v0, v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->tm1:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePassSim1:Ljava/lang/Boolean;

    sput-object v1, Lcom/android/mms/transaction/IMEITrackerService_DS;->messagePass:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const-string v1, "ITS_DS"

    const-string v2, "SIM is absent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
