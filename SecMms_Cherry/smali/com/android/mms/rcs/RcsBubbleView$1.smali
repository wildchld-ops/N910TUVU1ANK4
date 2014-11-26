.class Lcom/android/mms/rcs/RcsBubbleView$1;
.super Ljava/lang/Object;
.source "RcsBubbleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsBubbleView;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsBubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsBubbleView$1;->this$0:Lcom/android/mms/rcs/RcsBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$1;->this$0:Lcom/android/mms/rcs/RcsBubbleView;

    # getter for: Lcom/android/mms/rcs/RcsBubbleView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v0}, Lcom/android/mms/rcs/RcsBubbleView;->access$000(Lcom/android/mms/rcs/RcsBubbleView;)Lcom/android/mms/ui/MessageListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    return-void
.end method
