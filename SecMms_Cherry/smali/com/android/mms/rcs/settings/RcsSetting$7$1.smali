.class Lcom/android/mms/rcs/settings/RcsSetting$7$1;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsSetting$7;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$1;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsState;->setStateActivated()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$1;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    iget-object v1, v1, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v1}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mChangeSwitchState:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
