.class final Lcom/android/mms/rcs/settings/RcsMessagesSettings$5;
.super Landroid/os/Handler;
.source "RcsMessagesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/settings/RcsMessagesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->getState()Lcom/android/mms/rcs/RcsState$State;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/RcsState$State;->ACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
