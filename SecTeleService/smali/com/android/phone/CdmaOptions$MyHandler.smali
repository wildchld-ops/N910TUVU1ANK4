.class Lcom/android/phone/CdmaOptions$MyHandler;
.super Landroid/os/Handler;
.source "CdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaOptions;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaOptions;Lcom/android/phone/CdmaOptions$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/CdmaOptions;
    .param p2    # Lcom/android/phone/CdmaOptions$1;

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;-><init>(Lcom/android/phone/CdmaOptions;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    const-string v3, "LTE ONLY MODE!"

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    # getter for: Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$400(Lcom/android/phone/CdmaOptions;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "button_carrier_sel_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    const-string v3, "Remove network operator menu!"

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleGetPreferredOnlyTypeResponse(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredOnlyTypeResponse ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    # setter for: Lcom/android/phone/CdmaOptions;->homeSystemId:I
    invoke-static {v3, v2}, Lcom/android/phone/CdmaOptions;->access$102(Lcom/android/phone/CdmaOptions;I)I

    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x1

    aget v2, v2, v4

    # setter for: Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I
    invoke-static {v3, v2}, Lcom/android/phone/CdmaOptions;->access$202(Lcom/android/phone/CdmaOptions;I)I

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredOnlyTypeResponse homeSystemId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    # getter for: Lcom/android/phone/CdmaOptions;->homeSystemId:I
    invoke-static {v4}, Lcom/android/phone/CdmaOptions;->access$100(Lcom/android/phone/CdmaOptions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PrlPreferredOnly : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    # getter for: Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I
    invoke-static {v4}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    # invokes: Lcom/android/phone/CdmaOptions;->checkPrlPreferredOnly()V
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    const-string v3, "ArrayIndexOutOfBoundsException Caught"

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;->handleGetPreferredOnlyTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
