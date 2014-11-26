.class Lcom/android/mms/rcs/SetRcsEnabledStateTask$1;
.super Ljava/lang/Object;
.source "SetRcsEnabledStateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/SetRcsEnabledStateTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/SetRcsEnabledStateTask;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/SetRcsEnabledStateTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/SetRcsEnabledStateTask$1;->this$0:Lcom/android/mms/rcs/SetRcsEnabledStateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
