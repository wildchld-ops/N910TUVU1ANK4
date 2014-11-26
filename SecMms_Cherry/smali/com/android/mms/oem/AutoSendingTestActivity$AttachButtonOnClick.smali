.class Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/oem/AutoSendingTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachButtonOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/oem/AutoSendingTestActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity;Lcom/android/mms/oem/AutoSendingTestActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/oem/AutoSendingTestActivity;
    .param p2    # Lcom/android/mms/oem/AutoSendingTestActivity$1;

    invoke-direct {p0, p1}, Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$1000(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # setter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$1102(Lcom/android/mms/oem/AutoSendingTestActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # setter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$1202(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method
