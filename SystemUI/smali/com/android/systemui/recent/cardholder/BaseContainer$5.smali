.class Lcom/android/systemui/recent/cardholder/BaseContainer$5;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/BaseContainer;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$5;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iput-object p2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$5;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$5;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$5;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mCallback:Lcom/android/systemui/recent/cardholder/RecentsCallback;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$000(Lcom/android/systemui/recent/cardholder/BaseContainer;)Lcom/android/systemui/recent/cardholder/RecentsCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$5;->val$view:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    return-void
.end method
