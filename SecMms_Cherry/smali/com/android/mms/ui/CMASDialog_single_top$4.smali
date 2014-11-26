.class Lcom/android/mms/ui/CMASDialog_single_top$4;
.super Ljava/lang/Object;
.source "CMASDialog_single_top.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog_single_top;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog_single_top;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$isUserPrompt:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog_single_top;Ljava/lang/String;ZLandroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    iput-object p2, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->val$address:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->val$isUserPrompt:Z

    iput-object p4, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    # invokes: Lcom/android/mms/ui/CMASDialog_single_top;->checkLockScreenOn()Z
    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog_single_top;->access$400(Lcom/android/mms/ui/CMASDialog_single_top;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    # getter for: Lcom/android/mms/ui/CMASDialog_single_top;->messageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog_single_top;->access$100(Lcom/android/mms/ui/CMASDialog_single_top;)Landroid/net/Uri;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/CMASDialog_single_top;->markAsRead(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASDialog_single_top;->access$200(Lcom/android/mms/ui/CMASDialog_single_top;Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    # invokes: Lcom/android/mms/ui/CMASDialog_single_top;->launchMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog_single_top;->access$500(Lcom/android/mms/ui/CMASDialog_single_top;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->val$address:Ljava/lang/String;

    const-string v1, "President"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->val$isUserPrompt:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    # invokes: Lcom/android/mms/ui/CMASDialog_single_top;->showCMASUserPropmtDialog()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog_single_top;->access$600(Lcom/android/mms/ui/CMASDialog_single_top;)V

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cmas_user_preferences"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->removeCmasdialog()V

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASDialog_single_top;->access$302(Lcom/android/mms/ui/CMASDialog_single_top;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$4;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
