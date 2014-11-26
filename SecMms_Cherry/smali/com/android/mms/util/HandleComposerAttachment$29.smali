.class Lcom/android/mms/util/HandleComposerAttachment$29;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->HandleSingleAttachMentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$002(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "HandleSingleAttachMentFromIntent(), singleAttachMent 1"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$29;->val$extras:Landroid/os/Bundle;

    # invokes: Lcom/android/mms/util/HandleComposerAttachment;->singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/util/HandleComposerAttachment;->access$700(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
