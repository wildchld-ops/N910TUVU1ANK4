.class Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$2;
.super Ljava/lang/Object;
.source "RcsMessagesSettings.java"

# interfaces
.implements Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$2;->this$1:Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateActivated()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$2;->this$1:Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    return-void
.end method
