.class Lcom/android/mms/rcs/settings/RcsSetting$6;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsSetting;->updateRcsPermanentDisableAvailabilityState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/settings/RcsSetting;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$6;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting$6;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    # setter for: Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableAvailabilityState:Z
    invoke-static {v1, v0}, Lcom/android/mms/rcs/settings/RcsSetting;->access$202(Lcom/android/mms/rcs/settings/RcsSetting;Z)Z

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$6;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$6;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$6;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
