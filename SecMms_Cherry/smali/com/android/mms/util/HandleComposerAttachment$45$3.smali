.class Lcom/android/mms/util/HandleComposerAttachment$45$3;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment$45;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/HandleComposerAttachment$45;

.field final synthetic val$urlIdxList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment$45;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$45$3;->this$1:Lcom/android/mms/util/HandleComposerAttachment$45;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$45$3;->val$urlIdxList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$45$3;->this$1:Lcom/android/mms/util/HandleComposerAttachment$45;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$45;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$45$3;->val$urlIdxList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$45$3;->this$1:Lcom/android/mms/util/HandleComposerAttachment$45;

    iget-object v2, v2, Lcom/android/mms/util/HandleComposerAttachment$45;->val$uris:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeLimitErrorPopup(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
