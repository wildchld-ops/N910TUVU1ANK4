.class Lcom/android/mms/ui/ConversationComposer$18;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer;->showDialogForRcsFirstLaunch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$18;->this$0:Lcom/android/mms/ui/ConversationComposer;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationComposer$18;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer$18;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_rcs_first_launch"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v2, Lcom/android/mms/rcs/RcsState;

    invoke-direct {v2}, Lcom/android/mms/rcs/RcsState;-><init>()V

    sput-object v2, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    sget-object v2, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v2}, Lcom/android/mms/rcs/RcsState;->setStateNotInitialized()V

    new-instance v1, Lcom/android/mms/rcs/SetRcsEnabledStateTask;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer$18;->this$0:Lcom/android/mms/ui/ConversationComposer;

    new-instance v3, Lcom/android/mms/ui/ConversationComposer$18$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationComposer$18$1;-><init>(Lcom/android/mms/ui/ConversationComposer$18;)V

    invoke-direct {v1, v2, v3}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
