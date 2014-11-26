.class Lcom/android/mms/saverestore/RestorePreviewMessageListItem$5;
.super Ljava/lang/Object;
.source "RestorePreviewMessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/RestorePreviewMessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$5;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$5;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->access$700(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$5;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->onMessageListItemClick()V

    :cond_0
    return-void
.end method
