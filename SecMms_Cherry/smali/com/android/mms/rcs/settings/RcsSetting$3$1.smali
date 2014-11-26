.class Lcom/android/mms/rcs/settings/RcsSetting$3$1;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsSetting$3;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/settings/RcsSetting$3;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$3$1;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateNotInitialized()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$3$1;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$3;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsSetting$3;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->unregisterObserver()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateActivated()V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$3$1;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$3;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsSetting$3;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateDeactivated()V

    goto :goto_1
.end method
