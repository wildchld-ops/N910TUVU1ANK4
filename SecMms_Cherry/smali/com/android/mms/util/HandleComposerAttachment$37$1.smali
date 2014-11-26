.class Lcom/android/mms/util/HandleComposerAttachment$37$1;
.super Ljava/lang/Thread;
.source "HandleComposerAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment$37;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/HandleComposerAttachment$37;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment$37;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v2, v2, Lcom/android/mms/util/HandleComposerAttachment$37;->val$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v3, v3, Lcom/android/mms/util/HandleComposerAttachment$37;->val$mFilePathFromUri:Ljava/lang/String;

    # invokes: Lcom/android/mms/util/HandleComposerAttachment;->videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3}, Lcom/android/mms/util/HandleComposerAttachment;->access$1400(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$1000(Lcom/android/mms/util/HandleComposerAttachment;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    if-ne v0, v10, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v2, v2, Lcom/android/mms/util/HandleComposerAttachment$37;->val$fileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget v2, v2, Lcom/android/mms/util/HandleComposerAttachment$37;->val$location:I

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-boolean v3, v3, Lcom/android/mms/util/HandleComposerAttachment$37;->val$flagCRMode:Z

    iget-object v4, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-boolean v4, v4, Lcom/android/mms/util/HandleComposerAttachment$37;->val$sendMultiple:Z

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-boolean v5, v5, Lcom/android/mms/util/HandleComposerAttachment$37;->val$append:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addVideo(Landroid/net/Uri;IZZZ)I

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$37$1$1;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$37$1$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment$37$1;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    sput v9, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # setter for: Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I
    invoke-static {v0, v10}, Lcom/android/mms/util/HandleComposerAttachment;->access$1502(Lcom/android/mms/util/HandleComposerAttachment;I)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const v4, 0x7f0c00c4

    const/4 v5, 0x0

    const/16 v6, 0xc

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-boolean v7, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->val$sendMultiple:Z

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$37$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$37;

    iget-boolean v8, v0, Lcom/android/mms/util/HandleComposerAttachment$37;->val$append:Z

    move v3, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method
