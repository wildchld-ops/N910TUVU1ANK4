.class Lcom/android/mms/ui/MessageListAdapter$3;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter;->setSearchTitle(Landroid/database/Cursor;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;

.field final synthetic val$expandableImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$expandableImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$expandableImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->collapse(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$expandableImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->expand(Landroid/view/View;Z)V

    goto :goto_0
.end method
