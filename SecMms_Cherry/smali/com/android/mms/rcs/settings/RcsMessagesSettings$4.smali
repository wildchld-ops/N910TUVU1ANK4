.class Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;
.super Ljava/lang/Object;
.source "RcsMessagesSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsMessagesSettings;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsState;->getState()Lcom/android/mms/rcs/RcsState$State;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/RcsState$State;->ACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsState;->getState()Lcom/android/mms/rcs/RcsState$State;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/RcsState$State;->ACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    if-eq v1, v2, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    sget-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsState;->getState()Lcom/android/mms/rcs/RcsState$State;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/RcsState$State;->ACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask;

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    new-instance v3, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$1;

    invoke-direct {v3, p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$1;-><init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;)V

    invoke-direct {v1, v2, v3}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;->this$0:Lcom/android/mms/rcs/settings/RcsMessagesSettings;

    new-instance v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$2;

    invoke-direct {v2, p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4$2;-><init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;)V

    invoke-direct {v0, v1, v2}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
