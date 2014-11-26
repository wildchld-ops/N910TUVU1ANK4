.class Lcom/android/mms/rcs/settings/RcsSetting$4$1;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Lcom/android/mms/rcs/GetPermanentDisableStateTask$IGetPermanentDisableStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsSetting$4;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/settings/RcsSetting$4;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$4$1;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateInProgress()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$4$1;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$4;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsSetting$4;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->unregisterPermanentDisableStateObserver()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStatePermanetDisabled()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$4$1;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$4;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsSetting$4;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateActivated()V

    goto :goto_1
.end method
