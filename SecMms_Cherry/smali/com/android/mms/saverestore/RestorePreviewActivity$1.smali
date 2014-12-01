.class Lcom/android/mms/saverestore/RestorePreviewActivity$1;
.super Landroid/widget/ArrayAdapter;
.source "RestorePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/RestorePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/RestorePreviewActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity$1;->this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewActivity$1;->this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/mms/saverestore/RestorePreviewActivity;->access$000(Lcom/android/mms/saverestore/RestorePreviewActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/saverestore/SavedSmsMessage;

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewActivity$1;->this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/saverestore/RestorePreviewActivity;->access$100(Lcom/android/mms/saverestore/RestorePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/android/mms/saverestore/RestorePreviewActivity$ArrayData;

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getId()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/mms/saverestore/RestorePreviewActivity$ArrayData;-><init>(JLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewActivity$1;->this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/saverestore/RestorePreviewActivity;->access$200(Lcom/android/mms/saverestore/RestorePreviewActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->bind(Lcom/android/mms/saverestore/SavedSmsMessage;Landroid/content/Context;Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method
