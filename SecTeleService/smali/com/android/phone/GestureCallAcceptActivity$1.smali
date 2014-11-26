.class Lcom/android/phone/GestureCallAcceptActivity$1;
.super Ljava/lang/Object;
.source "GestureCallAcceptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GestureCallAcceptActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GestureCallAcceptActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/GestureCallAcceptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GestureCallAcceptActivity$1;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity$1;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    # getter for: Lcom/android/phone/GestureCallAcceptActivity;->isClicked:Z
    invoke-static {v0}, Lcom/android/phone/GestureCallAcceptActivity;->access$000(Lcom/android/phone/GestureCallAcceptActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity$1;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/GestureCallAcceptActivity;->isClicked:Z
    invoke-static {v0, v1}, Lcom/android/phone/GestureCallAcceptActivity;->access$002(Lcom/android/phone/GestureCallAcceptActivity;Z)Z

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity$1;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    # getter for: Lcom/android/phone/GestureCallAcceptActivity;->mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;
    invoke-static {v0}, Lcom/android/phone/GestureCallAcceptActivity;->access$100(Lcom/android/phone/GestureCallAcceptActivity;)Lcom/android/phone/GestureCallAcceptEnabler;

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity$1;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    iget-object v0, v0, Lcom/android/phone/GestureCallAcceptActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/phone/GestureCallAcceptEnabler;->isGestureCallAcceptOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity$1;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    const v1, 0x7f090a04

    const v2, 0x7f090a05

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/GestureCallAcceptActivity;->showEnableSettingDialog(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity$1;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    invoke-virtual {v0}, Lcom/android/phone/GestureCallAcceptActivity;->startTutorial()V

    goto :goto_0
.end method
