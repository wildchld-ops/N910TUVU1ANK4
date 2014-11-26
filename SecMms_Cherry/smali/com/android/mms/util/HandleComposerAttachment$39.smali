.class Lcom/android/mms/util/HandleComposerAttachment$39;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingEditDialog(Landroid/net/Uri;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$append:Z

.field final synthetic val$outputSize:J

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$outputSize:J

    iput-boolean p5, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v8, 0x1

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_data"

    aput-object v9, v1, v8

    iget-object v8, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v9, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/util/HandleComposerAttachment;->getMediaFilePathFromUri(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$1700(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xb0

    const/16 v6, 0x90

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.app.video/com.samsung.app.video.trimactivity.TrimActivity"

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "uri"

    invoke-virtual {v4, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v8, "VIDEO_OUTPUT_SIZE"

    iget-wide v9, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$outputSize:J

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v8, "VIDEO_OUTPUT_WIDTH"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "VIDEO_OUTPUT_HEIGHT"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0x2b

    :try_start_0
    iget-boolean v8, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$append:Z

    if-eqz v8, :cond_0

    const/16 v5, 0xc

    :cond_0
    iget-object v8, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v8}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
