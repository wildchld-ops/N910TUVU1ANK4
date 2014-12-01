.class Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowAttachmentListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/AllowAttachmentListener"


# instance fields
.field private mAppend:Z

.field private mDataUri:Landroid/net/Uri;

.field private mIsClicked:Z

.field private mMediaType:Ljava/lang/String;

.field private mReqCode:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mIsClicked:Z

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mReqCode:I

    iput-boolean p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    return v0
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mReqCode:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const v5, 0x7f0c017f

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/AllowAttachmentListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(),which="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mIsClicked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0c00c3

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v1, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v1, v3, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v6

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;

    invoke-direct {v1, p0, v2, v6}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;ILandroid/app/ProgressDialog;)V

    const-string v3, "AllowAttachmentListener"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mIsClicked:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0c00c4

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addVideo(Landroid/net/Uri;IZZZ)I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->saveMmsStateForWarningMode()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0c00c2

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addAudio(Landroid/net/Uri;IZZZ)I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->saveMmsStateForWarningMode()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v3, 0x7f0c012a

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v1, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v1, v3, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v6

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;Landroid/app/ProgressDialog;)V

    const-string v3, "AllowAttachmentListener"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
