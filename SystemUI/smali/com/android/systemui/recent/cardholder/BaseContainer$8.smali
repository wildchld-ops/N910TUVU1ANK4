.class Lcom/android/systemui/recent/cardholder/BaseContainer$8;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$8;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$8;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mCallback:Lcom/android/systemui/recent/cardholder/RecentsCallback;
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$000(Lcom/android/systemui/recent/cardholder/BaseContainer;)Lcom/android/systemui/recent/cardholder/RecentsCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/recent/cardholder/RecentsCallback;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
