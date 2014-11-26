.class Lcom/android/mms/util/HandleComposerAttachment$37$1$1;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment$37$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/util/HandleComposerAttachment$37$1;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment$37$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1$1;->this$2:Lcom/android/mms/util/HandleComposerAttachment$37$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1$1;->this$2:Lcom/android/mms/util/HandleComposerAttachment$37$1;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1$1;->this$2:Lcom/android/mms/util/HandleComposerAttachment$37$1;

    iget-object v3, v3, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v3, v3, Lcom/android/mms/util/HandleComposerAttachment$37;->val$outPutFilePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1$1;->this$2:Lcom/android/mms/util/HandleComposerAttachment$37$1;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1$1;->this$2:Lcom/android/mms/util/HandleComposerAttachment$37$1;

    iget-object v1, v1, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v1, v1, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c04b3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1$1;->this$2:Lcom/android/mms/util/HandleComposerAttachment$37$1;

    iget-object v5, v5, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v5, v5, Lcom/android/mms/util/HandleComposerAttachment$37;->val$fileName:Ljava/lang/String;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Videos"

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
