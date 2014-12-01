.class Lcom/android/mms/ui/MmsSlideView$1$1$3;
.super Ljava/lang/Object;
.source "MmsSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSlideView$1$1;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/MmsSlideView$1$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSlideView$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView$1$1$3;->this$2:Lcom/android/mms/ui/MmsSlideView$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$1$1$3;->this$2:Lcom/android/mms/ui/MmsSlideView$1$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1$1;->this$1:Lcom/android/mms/ui/MmsSlideView$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1;->this$0:Lcom/android/mms/ui/MmsSlideView;

    # getter for: Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSlideView;->access$1000(Lcom/android/mms/ui/MmsSlideView;)Lcom/android/mms/ui/MessageListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->openModel(Landroid/content/Context;Lcom/android/mms/model/Model;)V

    return-void
.end method
