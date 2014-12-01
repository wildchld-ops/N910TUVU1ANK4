.class Lcom/android/mms/ui/MmsSlideView$2;
.super Ljava/lang/Object;
.source "MmsSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSlideView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView$2;->this$0:Lcom/android/mms/ui/MmsSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$2;->this$0:Lcom/android/mms/ui/MmsSlideView;

    # getter for: Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSlideView;->access$1000(Lcom/android/mms/ui/MmsSlideView;)Lcom/android/mms/ui/MessageListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    return-void
.end method
