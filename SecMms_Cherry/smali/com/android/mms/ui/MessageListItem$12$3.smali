.class Lcom/android/mms/ui/MessageListItem$12$3;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$12;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$12;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$12$3;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$12$3;->this$1:Lcom/android/mms/ui/MessageListItem$12;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
