.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;
.super Landroid/os/ResultReceiver;
.source "WritingBuddyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
