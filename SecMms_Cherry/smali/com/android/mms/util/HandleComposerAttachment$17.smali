.class Lcom/android/mms/util/HandleComposerAttachment$17;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->processingActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$append:Z

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ZLandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$uris:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$append:Z

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const v14, 0x7f0c014d

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v0, -0x1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$uris:Ljava/util/ArrayList;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    iget-object v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    iget-object v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iget-object v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/android/mms/ui/MessageUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-le v3, v10, :cond_1

    move v7, v10

    :goto_1
    if-eqz v5, :cond_2

    iget-object v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-boolean v13, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$append:Z

    invoke-virtual {v12, v5, v8, v13, v7}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I

    move-result v0

    const/4 v12, -0x2

    if-ne v0, v12, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v7, v11

    goto :goto_1

    :cond_2
    iget-object v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Lcom/android/mms/util/HandleComposerAttachment$17$1;

    invoke-direct {v13, p0, v4}, Lcom/android/mms/util/HandleComposerAttachment$17$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment$17;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$data:Landroid/content/Intent;

    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$data:Landroid/content/Intent;

    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/android/mms/ui/MessageUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-boolean v12, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->val$append:Z

    invoke-virtual {v10, v5, v1, v12, v11}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I

    move-result v0

    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/android/mms/util/HandleComposerAttachment$17$3;

    invoke-direct {v11, p0, v9}, Lcom/android/mms/util/HandleComposerAttachment$17$3;-><init>(Lcom/android/mms/util/HandleComposerAttachment$17;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :cond_7
    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment$17;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/android/mms/util/HandleComposerAttachment$17$2;

    invoke-direct {v11, p0, v4}, Lcom/android/mms/util/HandleComposerAttachment$17$2;-><init>(Lcom/android/mms/util/HandleComposerAttachment$17;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method
