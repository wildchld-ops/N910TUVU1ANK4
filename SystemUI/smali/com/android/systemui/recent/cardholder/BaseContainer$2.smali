.class Lcom/android/systemui/recent/cardholder/BaseContainer$2;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/BaseContainer;->doScroll(FI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$2;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iput-object p2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$2;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->optHide(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
