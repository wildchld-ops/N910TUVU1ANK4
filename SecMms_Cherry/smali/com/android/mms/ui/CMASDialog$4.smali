.class Lcom/android/mms/ui/CMASDialog$4;
.super Ljava/lang/Object;
.source "CMASDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$isUserPrompt:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog;Ljava/lang/String;ZLandroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog$4;->this$0:Lcom/android/mms/ui/CMASDialog;

    iput-object p2, p0, Lcom/android/mms/ui/CMASDialog$4;->val$address:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/mms/ui/CMASDialog$4;->val$isUserPrompt:Z

    iput-object p4, p0, Lcom/android/mms/ui/CMASDialog$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->this$0:Lcom/android/mms/ui/CMASDialog;

    # invokes: Lcom/android/mms/ui/CMASDialog;->checkLockScreenOn()Z
    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog;->access$400(Lcom/android/mms/ui/CMASDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->this$0:Lcom/android/mms/ui/CMASDialog;

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog$4;->this$0:Lcom/android/mms/ui/CMASDialog;

    # getter for: Lcom/android/mms/ui/CMASDialog;->messageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog;->access$100(Lcom/android/mms/ui/CMASDialog;)Landroid/net/Uri;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/CMASDialog;->markAsRead(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASDialog;->access$200(Lcom/android/mms/ui/CMASDialog;Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->this$0:Lcom/android/mms/ui/CMASDialog;

    # invokes: Lcom/android/mms/ui/CMASDialog;->launchMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog;->access$500(Lcom/android/mms/ui/CMASDialog;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->cancelCmasVibrator()V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->val$address:Ljava/lang/String;

    const-string v1, "President"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/CMASDialog$4;->val$isUserPrompt:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->this$0:Lcom/android/mms/ui/CMASDialog;

    # invokes: Lcom/android/mms/ui/CMASDialog;->showCMASUserPropmtDialog()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog;->access$600(Lcom/android/mms/ui/CMASDialog;)V

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cmas_user_preferences"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->removeCmasdialog()V

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->this$0:Lcom/android/mms/ui/CMASDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASDialog;->access$302(Lcom/android/mms/ui/CMASDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$4;->this$0:Lcom/android/mms/ui/CMASDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
