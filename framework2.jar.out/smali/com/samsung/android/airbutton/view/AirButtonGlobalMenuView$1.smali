.class Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;
.super Ljava/lang/Object;
.source "AirButtonGlobalMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$002(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    :cond_0
    return-void
.end method
